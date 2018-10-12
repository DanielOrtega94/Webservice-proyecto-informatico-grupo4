<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property int $divisionid
 * @property string $nombre
 * @property string $carrera
 * @property string $facultad
 * @property string $deleted_at
 * @property string $created_at
 * @property string $updated_at
 * @property Divisione $divisione
 * @property Campeonato[] $campeonatos
 * @property Jugadore[] $jugadores
 * @property Partido[] $partidos
 * @property Partido[] $partidos
 * @property Partido[] $partidos
 * @property Subscripcione[] $subscripciones
 */
class equipos extends Model
{
    /**
     * @var array
     */
    protected $fillable = ['divisionid', 'nombre', 'carrera', 'facultad', 'deleted_at', 'created_at', 'updated_at'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function divisione()
    {
        return $this->belongsTo('App\Divisione', 'divisionid');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function campeonatos()
    {
        return $this->hasMany('App\Campeonato', 'campeon');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function jugadores()
    {
        return $this->hasMany('App\Jugadore', 'equipoid');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function jugador1()
    {
        return $this->hasMany('App\Partido', 'equipo_1');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function jugador2()
    {
        return $this->hasMany('App\Partido', 'equipo_2');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function ganador()
    {
        return $this->hasMany('App\Partido', 'ganador');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function subscripciones()
    {
        return $this->hasMany('App\Subscripcione', 'equipoid');
    }
}
