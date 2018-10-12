<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property int $equipoid
 * @property string $nombre
 * @property int $edad
 * @property int $ano_ingreso
 * @property string $deleted_at
 * @property string $created_at
 * @property string $updated_at
 * @property Equipo $equipo
 * @property PartidoJugador[] $partidoJugadors
 * @property Sancione[] $sanciones
 */
class jugadores extends Model
{
    /**
     * @var array
     */
    protected $fillable = ['nombre', 'edad', 'ano_ingreso', 'deleted_at', 'created_at', 'updated_at'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function equipo()
    {
        return $this->belongsTo('App\Equipo', 'equipoid');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function partidoJugadors()
    {
        return $this->hasMany('App\PartidoJugador', 'jugadorid');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function sanciones()
    {
        return $this->hasMany('App\Sancione', 'jugadorid');
    }
}
