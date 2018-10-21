<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property string $nombre
 * @property string $correo
 * @property string $password
 * @property boolean $admin
 * @property string $deleted_at
 * @property string $created_at
 * @property string $updated_at
 * @property Subscripcione[] $subscripciones
 */
class Usuario extends Model
{
    /**
     * @var array
     */
    protected $fillable = ['nombre', 'correo', 'password', 'admin', 'deleted_at', 'created_at', 'updated_at'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function subscripciones()
    {
        return $this->hasMany('App\Subscripcione', 'usuarioid');
    }
}
