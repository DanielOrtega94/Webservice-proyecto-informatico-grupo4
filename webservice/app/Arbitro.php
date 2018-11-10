<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property string $nombre
 * @property string $carrera
 * @property string $fecha_ingreso
 * @property string $deleted_at
 * @property string $created_at
 * @property string $updated_at
 * @property Arbitraje[] $arbitrajes
 */
class Arbitro extends Model
{
    /**
     * @var array
     */
    protected $fillable = ['nombre', 'carrera', 'fecha_ingreso', 'deleted_at', 'created_at', 'updated_at'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function arbitrajes()
    {
        return $this->hasMany('App\Arbitraje', 'arbitroid');
    }
}
