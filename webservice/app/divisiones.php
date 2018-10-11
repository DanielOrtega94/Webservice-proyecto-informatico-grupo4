<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property int $deporteid
 * @property string $nombre
 * @property string $deleted_at
 * @property string $created_at
 * @property string $updated_at
 * @property Deporte $deporte
 * @property Campeonato[] $campeonatos
 * @property Equipo[] $equipos
 * @property Partido[] $partidos
 */
class divisiones extends Model
{
    /**
     * @var array
     */
    protected $fillable = ['deporteid', 'nombre', 'deleted_at', 'created_at', 'updated_at'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function deporte()
    {
        return $this->belongsTo('App\Deporte', 'deporteid');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function campeonatos()
    {
        return $this->hasMany('App\Campeonato', 'divisionid');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function equipos()
    {
        return $this->hasMany('App\Equipo', 'divisionid');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function partidos()
    {
        return $this->hasMany('App\Partido', 'divisionid');
    }
}
