<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property int $divisionid
 * @property int $campeon
 * @property int $ano
 * @property string $nombre
 * @property string $semestre
 * @property string $fecha_inicio
 * @property string $fecha_termino
 * @property string $reglamento
 * @property string $deleted_at
 * @property string $created_at
 * @property string $updated_at
 * @property Equipo $equipo
 * @property Divisione $divisione
 */
class Campeonato extends Model
{
    /**
     * @var array
     */
    protected $fillable = ['divisionid', 'campeon', 'ano', 'nombre', 'semestre', 'fecha_inicio', 'fecha_termino', 'reglamento', 'deleted_at', 'created_at', 'updated_at'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function equipo()
    {
        return $this->belongsTo('App\Equipo', 'campeon');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function divisione()
    {
        return $this->belongsTo('App\Divisione', 'divisionid');
    }
}
