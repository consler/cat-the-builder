.class public abstract Lorg/catrobat/catroid/io/DeviceUserDataAccessor;
.super Ljava/lang/Object;
.source "DeviceUserDataAccessor.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private deviceFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const-class v0, Lorg/catrobat/catroid/io/DeviceUserDataAccessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/io/DeviceUserDataAccessor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "projectDirectory"    # Ljava/io/File;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lorg/catrobat/catroid/io/DeviceUserDataAccessor;->getDeviceFileName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/catrobat/catroid/io/DeviceUserDataAccessor;->deviceFile:Ljava/io/File;

    .line 60
    return-void
.end method

.method private getKeyList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/catrobat/catroid/formulaeditor/UserData;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .line 199
    .local p1, "userDataList":Ljava/util/List;, "Ljava/util/List<+Lorg/catrobat/catroid/formulaeditor/UserData;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v0, "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/util/UUID;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/formulaeditor/UserData;

    .line 201
    .local v2, "userData":Lorg/catrobat/catroid/formulaeditor/UserData;
    invoke-interface {v2}, Lorg/catrobat/catroid/formulaeditor/UserData;->getDeviceKey()Ljava/util/UUID;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    .end local v2    # "userData":Lorg/catrobat/catroid/formulaeditor/UserData;
    goto :goto_0

    .line 203
    :cond_0
    return-object v0
.end method


# virtual methods
.method public cleanUpDeletedUserData(Lorg/catrobat/catroid/content/Project;)V
    .locals 9
    .param p1, "project"    # Lorg/catrobat/catroid/content/Project;

    .line 158
    invoke-virtual {p0}, Lorg/catrobat/catroid/io/DeviceUserDataAccessor;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 159
    :try_start_0
    iget-object v1, p0, Lorg/catrobat/catroid/io/DeviceUserDataAccessor;->deviceFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    monitor-exit v0

    return-void

    .line 163
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/io/DeviceUserDataAccessor;->readMapFromJson()Ljava/util/Map;

    move-result-object v1

    .line 164
    .local v1, "deviceVariableMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Ljava/lang/Object;>;"
    if-nez v1, :cond_1

    .line 165
    monitor-exit v0

    return-void

    .line 168
    :cond_1
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/io/DeviceUserDataAccessor;->getUserData(Lorg/catrobat/catroid/content/Project;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/catrobat/catroid/io/DeviceUserDataAccessor;->getKeyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 169
    .local v2, "globalVariableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/util/UUID;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v3, "localVariableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/util/UUID;>;"
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Project;->getSceneList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/catrobat/catroid/content/Scene;

    .line 171
    .local v5, "scene":Lorg/catrobat/catroid/content/Scene;
    invoke-virtual {v5}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/catrobat/catroid/content/Sprite;

    .line 172
    .local v7, "sprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {p0, v7}, Lorg/catrobat/catroid/io/DeviceUserDataAccessor;->getUserData(Lorg/catrobat/catroid/content/Sprite;)Ljava/util/List;

    move-result-object v8

    invoke-direct {p0, v8}, Lorg/catrobat/catroid/io/DeviceUserDataAccessor;->getKeyList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 173
    nop

    .end local v7    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    goto :goto_1

    .line 174
    .end local v5    # "scene":Lorg/catrobat/catroid/content/Scene;
    :cond_2
    goto :goto_0

    .line 176
    :cond_3
    new-instance v4, Ljava/util/HashSet;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 177
    .local v4, "keysToRemove":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    invoke-interface {v4, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 178
    invoke-interface {v4, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 180
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/UUID;

    .line 181
    .local v6, "key":Ljava/util/UUID;
    invoke-interface {v1, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    nop

    .end local v6    # "key":Ljava/util/UUID;
    goto :goto_2

    .line 185
    :cond_4
    :try_start_1
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/io/DeviceUserDataAccessor;->writeMapToJson(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    goto :goto_3

    .line 186
    :catch_0
    move-exception v5

    .line 187
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v6, Lorg/catrobat/catroid/io/DeviceUserDataAccessor;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .end local v1    # "deviceVariableMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Ljava/lang/Object;>;"
    .end local v2    # "globalVariableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/util/UUID;>;"
    .end local v3    # "localVariableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/util/UUID;>;"
    .end local v4    # "keysToRemove":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_3
    monitor-exit v0

    .line 190
    return-void

    .line 189
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected abstract getDeviceFileName()Ljava/lang/String;
.end method

.method protected abstract getLock()Ljava/lang/Object;
.end method

.method protected abstract getUserData(Lorg/catrobat/catroid/content/Project;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/content/Project;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lorg/catrobat/catroid/formulaeditor/UserData;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getUserData(Lorg/catrobat/catroid/content/Sprite;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/content/Sprite;",
            ")",
            "Ljava/util/List<",
            "+",
            "Lorg/catrobat/catroid/formulaeditor/UserData;",
            ">;"
        }
    .end annotation
.end method

.method public readMapFromJson()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 131
    :try_start_0
    new-instance v0, Lorg/catrobat/catroid/io/DeviceUserDataAccessor$1;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/io/DeviceUserDataAccessor$1;-><init>(Lorg/catrobat/catroid/io/DeviceUserDataAccessor;)V

    .line 132
    invoke-virtual {v0}, Lorg/catrobat/catroid/io/DeviceUserDataAccessor$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 133
    .local v0, "mapType":Ljava/lang/reflect/Type;
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Ljava/io/FileReader;

    iget-object v3, p0, Lorg/catrobat/catroid/io/DeviceUserDataAccessor;->deviceFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 134
    .end local v0    # "mapType":Ljava/lang/reflect/Type;
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/io/FileNotFoundException;
    iget-object v1, p0, Lorg/catrobat/catroid/io/DeviceUserDataAccessor;->deviceFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    sget-object v1, Lorg/catrobat/catroid/io/DeviceUserDataAccessor;->TAG:Ljava/lang/String;

    const-string v2, "Device Variable File corrupted!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v1, p0, Lorg/catrobat/catroid/io/DeviceUserDataAccessor;->deviceFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 139
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public readUserData(Lorg/catrobat/catroid/formulaeditor/UserData;)Z
    .locals 3
    .param p1, "userData"    # Lorg/catrobat/catroid/formulaeditor/UserData;

    .line 71
    invoke-virtual {p0}, Lorg/catrobat/catroid/io/DeviceUserDataAccessor;->readMapFromJson()Ljava/util/Map;

    move-result-object v0

    .line 73
    .local v0, "deviceMap":Ljava/util/Map;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 74
    invoke-interface {p1}, Lorg/catrobat/catroid/formulaeditor/UserData;->reset()V

    .line 75
    return v1

    .line 78
    :cond_0
    invoke-interface {p1}, Lorg/catrobat/catroid/formulaeditor/UserData;->getDeviceKey()Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 79
    invoke-interface {p1}, Lorg/catrobat/catroid/formulaeditor/UserData;->reset()V

    .line 80
    return v1

    .line 82
    :cond_1
    invoke-interface {p1}, Lorg/catrobat/catroid/formulaeditor/UserData;->getDeviceKey()Ljava/util/UUID;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/catrobat/catroid/formulaeditor/UserData;->setValue(Ljava/lang/Object;)V

    .line 83
    const/4 v1, 0x1

    return v1
.end method

.method public removeDeviceValue(Lorg/catrobat/catroid/formulaeditor/UserData;)V
    .locals 4
    .param p1, "userData"    # Lorg/catrobat/catroid/formulaeditor/UserData;

    .line 109
    invoke-virtual {p0}, Lorg/catrobat/catroid/io/DeviceUserDataAccessor;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 110
    :try_start_0
    iget-object v1, p0, Lorg/catrobat/catroid/io/DeviceUserDataAccessor;->deviceFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 115
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/catrobat/catroid/io/DeviceUserDataAccessor;->readMapFromJson()Ljava/util/Map;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    .local v1, "deviceVariableMap":Ljava/util/Map;
    if-nez v1, :cond_1

    .line 117
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 120
    :cond_1
    :try_start_3
    invoke-interface {p1}, Lorg/catrobat/catroid/formulaeditor/UserData;->getDeviceKey()Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/io/DeviceUserDataAccessor;->writeMapToJson(Ljava/util/Map;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 124
    .end local v1    # "deviceVariableMap":Ljava/util/Map;
    goto :goto_0

    .line 122
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v2, Lorg/catrobat/catroid/io/DeviceUserDataAccessor;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit v0

    .line 126
    return-void

    .line 125
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public setDeviceFile(Ljava/io/File;)V
    .locals 0
    .param p1, "deviceFile"    # Ljava/io/File;

    .line 66
    iput-object p1, p0, Lorg/catrobat/catroid/io/DeviceUserDataAccessor;->deviceFile:Ljava/io/File;

    .line 67
    return-void
.end method

.method public writeMapToJson(Ljava/util/Map;)V
    .locals 4
    .param p1, "map"    # Ljava/util/Map;

    .line 145
    :try_start_0
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lorg/catrobat/catroid/io/DeviceUserDataAccessor;->deviceFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    :try_start_1
    new-instance v1, Lorg/catrobat/catroid/io/DeviceUserDataAccessor$2;

    invoke-direct {v1, p0}, Lorg/catrobat/catroid/io/DeviceUserDataAccessor$2;-><init>(Lorg/catrobat/catroid/io/DeviceUserDataAccessor;)V

    .line 148
    invoke-virtual {v1}, Lorg/catrobat/catroid/io/DeviceUserDataAccessor$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 149
    .local v1, "mapType":Ljava/lang/reflect/Type;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p1, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "jsonString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 151
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    .end local v1    # "mapType":Ljava/lang/reflect/Type;
    .end local v2    # "jsonString":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 154
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_1

    .line 145
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    :catchall_0
    move-exception v1

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local p1    # "map":Ljava/util/Map;
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 152
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local p1    # "map":Ljava/util/Map;
    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    :try_start_5
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "map":Ljava/util/Map;
    :goto_0
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local p1    # "map":Ljava/util/Map;
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lorg/catrobat/catroid/io/DeviceUserDataAccessor;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method

.method public writeUserData(Lorg/catrobat/catroid/formulaeditor/UserData;)V
    .locals 4
    .param p1, "userData"    # Lorg/catrobat/catroid/formulaeditor/UserData;

    .line 87
    invoke-virtual {p0}, Lorg/catrobat/catroid/io/DeviceUserDataAccessor;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 89
    :try_start_0
    iget-object v1, p0, Lorg/catrobat/catroid/io/DeviceUserDataAccessor;->deviceFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/catrobat/catroid/io/DeviceUserDataAccessor;->deviceFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    sget-object v1, Lorg/catrobat/catroid/io/DeviceUserDataAccessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot create "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/catrobat/catroid/io/DeviceUserDataAccessor;->deviceFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 94
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lorg/catrobat/catroid/io/DeviceUserDataAccessor;->readMapFromJson()Ljava/util/Map;

    move-result-object v1

    .line 96
    .local v1, "deviceVariableMap":Ljava/util/Map;
    if-nez v1, :cond_1

    .line 97
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v1, v2

    .line 100
    :cond_1
    invoke-interface {p1}, Lorg/catrobat/catroid/formulaeditor/UserData;->getDeviceKey()Ljava/util/UUID;

    move-result-object v2

    invoke-interface {p1}, Lorg/catrobat/catroid/formulaeditor/UserData;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/io/DeviceUserDataAccessor;->writeMapToJson(Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    .end local v1    # "deviceVariableMap":Ljava/util/Map;
    goto :goto_0

    .line 105
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    sget-object v2, Lorg/catrobat/catroid/io/DeviceUserDataAccessor;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    monitor-exit v0

    .line 106
    return-void

    .line 105
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
