<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $partidoid
 * @property int $jugadorid
 * @property int $puntos
 * @property int $triples
 * @property boolean $amarilla
 * @property boolean $roja
 * @property int $faltas_b
 * @property string $deleted_at
 * @property string $created_at
 * @property string $updated_at
 * @property Jugadore $jugadore
 * @property Partido $partido
 */
class partido_jugadors extends Model
{
    /**
     * @var array
     */
    protected $fillable = ['puntos', 'triples', 'amarilla', 'roja', 'faltas_b', 'deleted_at', 'created_at', 'updated_at'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function jugadore()
    {
        return $this->belongsTo('App\Jugadore', 'jugadorid');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function partido()
    {
        return $this->belongsTo('App\Partido', 'partidoid');
    }
}
