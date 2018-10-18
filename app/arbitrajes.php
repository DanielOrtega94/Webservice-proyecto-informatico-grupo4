<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $partidoid
 * @property int $arbitroid
 * @property string $tipo
 * @property string $deleted_at
 * @property string $created_at
 * @property string $updated_at
 * @property Arbitro $arbitro
 * @property Partido $partido
 */
class arbitrajes extends Model
{
    /**
     * @var array
     */
    protected $fillable = ['tipo', 'deleted_at', 'created_at', 'updated_at'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function arbitro()
    {
        return $this->belongsTo('App\Arbitro', 'arbitroid');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function partido()
    {
        return $this->belongsTo('App\Partido', 'partidoid');
    }
}
