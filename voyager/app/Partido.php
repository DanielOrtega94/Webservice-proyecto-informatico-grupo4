<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property int $equipo_1
 * @property int $equipo_2
 * @property int $divisionid
 * @property int $lugarid
 * @property int $ganador
 * @property string $fecha
 * @property string $hora
 * @property string $deleted_at
 * @property string $created_at
 * @property string $updated_at
 * @property int $empate
 * @property Divisione $divisione
 * @property Equipo $equipo
 * @property Equipo $equipo
 * @property Equipo $equipo
 * @property Lugare $lugare
 * @property Arbitraje[] $arbitrajes
 * @property PartidoJugador[] $partidoJugadors
 */
class Partido extends Model
{
    /**
     * @var array
     */
    protected $fillable = ['equipo_1', 'equipo_2', 'divisionid', 'lugarid', 'ganador', 'fecha', 'hora', 'deleted_at', 'created_at', 'updated_at', 'empate'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function divisione()
    {
        return $this->belongsTo('App\Divisione', 'divisionid');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function equipo_1()
    {
        return $this->belongsTo('App\Equipo', 'equipo_1');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function equipo_2()
    {
        return $this->belongsTo('App\Equipo', 'equipo_2');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function ganador()
    {
        return $this->belongsTo('App\Equipo', 'ganador');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function lugare()
    {
        return $this->belongsTo('App\Lugare', 'lugarid');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function arbitrajes()
    {
        return $this->hasMany('App\Arbitraje', 'partidoid');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function partidoJugadors()
    {
        return $this->hasMany('App\PartidoJugador', 'partidoid');
    }
}
