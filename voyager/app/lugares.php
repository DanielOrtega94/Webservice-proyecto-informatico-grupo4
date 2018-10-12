<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property string $nombre
 * @property string $ubicacion
 * @property string $capacidad
 * @property string $deleted_at
 * @property string $created_at
 * @property string $updated_at
 * @property Partido[] $partidos
 */
class lugares extends Model
{
    /**
     * @var array
     */
    protected $fillable = ['nombre', 'ubicacion', 'capacidad', 'deleted_at', 'created_at', 'updated_at'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function partidos()
    {
        return $this->hasMany('App\Partido', 'lugarid');
    }
}
