<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property int $jugadorid
 * @property string $tiempo
 * @property string $comentario
 * @property string $deleted_at
 * @property string $created_at
 * @property string $updated_at
 * @property Jugadore $jugadore
 */
class Sancione extends Model
{
    /**
     * @var array
     */
    protected $fillable = ['tiempo', 'comentario', 'deleted_at', 'created_at', 'updated_at'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function jugadore()
    {
        return $this->belongsTo('App\Jugadore', 'jugadorid');
    }
}
