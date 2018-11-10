<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property string $nombre
 * @property string $deleted_at
 * @property string $created_at
 * @property string $updated_at
 * @property Divisione[] $divisiones
 * @property Noticia[] $noticias
 */
class Deporte extends Model
{
    /**
     * @var array
     */
    protected $fillable = ['nombre', 'deleted_at', 'created_at', 'updated_at'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function divisiones()
    {
        return $this->hasMany('App\Divisione', 'deporteid');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function noticias()
    {
        return $this->hasMany('App\Noticia', 'deporteid');
    }
}
