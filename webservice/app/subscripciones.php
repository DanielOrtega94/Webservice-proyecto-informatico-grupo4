<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property int $usuarioid
 * @property int $equipoid
 * @property string $fecha
 * @property string $deleted_at
 * @property string $created_at
 * @property string $updated_at
 * @property Equipo $equipo
 * @property Usuario $usuario
 */
class subscripciones extends Model
{
    /**
     * @var array
     */
    protected $fillable = ['usuarioid', 'equipoid', 'fecha', 'deleted_at', 'created_at', 'updated_at'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function equipo()
    {
        return $this->belongsTo('App\Equipo', 'equipoid');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function usuario()
    {
        return $this->belongsTo('App\Usuario', 'usuarioid');
    }
}
