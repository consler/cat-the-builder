.class public final Lorg/catrobat/catroid/ProjectManager;
.super Ljava/lang/Object;
.source "ProjectManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static instance:Lorg/catrobat/catroid/ProjectManager;


# instance fields
.field private applicationContext:Landroid/content/Context;

.field private currentSprite:Lorg/catrobat/catroid/content/Sprite;

.field private currentlyEditedScene:Lorg/catrobat/catroid/content/Scene;

.field private currentlyPlayingScene:Lorg/catrobat/catroid/content/Scene;

.field private downloadedProjects:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final downloadedProjectsName:Ljava/lang/String;

.field private project:Lorg/catrobat/catroid/content/Project;

.field private startScene:Lorg/catrobat/catroid/content/Scene;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    const-class v0, Lorg/catrobat/catroid/ProjectManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/ProjectManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "applicationContext"    # Landroid/content/Context;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const-string v0, "downloaded_projects"

    iput-object v0, p0, Lorg/catrobat/catroid/ProjectManager;->downloadedProjectsName:Ljava/lang/String;

    .line 97
    iput-object p1, p0, Lorg/catrobat/catroid/ProjectManager;->applicationContext:Landroid/content/Context;

    .line 98
    sget-object v0, Lorg/catrobat/catroid/ProjectManager;->instance:Lorg/catrobat/catroid/ProjectManager;

    if-nez v0, :cond_0

    .line 99
    sput-object p0, Lorg/catrobat/catroid/ProjectManager;->instance:Lorg/catrobat/catroid/ProjectManager;

    .line 100
    invoke-virtual {p0}, Lorg/catrobat/catroid/ProjectManager;->loadDownloadedProjects()V

    .line 102
    :cond_0
    return-void
.end method

.method public static checkForVariablesConflicts(Ljava/util/List;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 352
    .local p0, "globalVariables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .local p1, "localVariables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 353
    .local v0, "conflicts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 354
    .local v2, "localVar":Ljava/lang/Object;
    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 355
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    .end local v2    # "localVar":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 358
    :cond_1
    return-object v0
.end method

.method public static flattenAllLists(Lorg/catrobat/catroid/content/Project;)V
    .locals 12
    .param p0, "project"    # Lorg/catrobat/catroid/content/Project;

    .line 362
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Project;->getSceneList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Scene;

    .line 363
    .local v1, "scene":Lorg/catrobat/catroid/content/Scene;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/Sprite;

    .line 364
    .local v3, "sprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Sprite;->getScriptList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/catrobat/catroid/content/Script;

    .line 365
    .local v5, "script":Lorg/catrobat/catroid/content/Script;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 366
    .local v6, "flatList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    invoke-virtual {v5, v6}, Lorg/catrobat/catroid/content/Script;->addToFlatList(Ljava/util/List;)V

    .line 367
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 368
    .local v8, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    instance-of v9, v8, Lorg/catrobat/catroid/content/bricks/FormulaBrick;

    if-eqz v9, :cond_0

    .line 369
    move-object v9, v8

    check-cast v9, Lorg/catrobat/catroid/content/bricks/FormulaBrick;

    .line 370
    .local v9, "formulaBrick":Lorg/catrobat/catroid/content/bricks/FormulaBrick;
    invoke-virtual {v9}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->getFormulas()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 371
    .local v11, "formula":Lorg/catrobat/catroid/formulaeditor/Formula;
    invoke-virtual {v11}, Lorg/catrobat/catroid/formulaeditor/Formula;->flattenAllLists()V

    .line 372
    .end local v11    # "formula":Lorg/catrobat/catroid/formulaeditor/Formula;
    goto :goto_4

    .line 374
    .end local v8    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    .end local v9    # "formulaBrick":Lorg/catrobat/catroid/content/bricks/FormulaBrick;
    :cond_0
    goto :goto_3

    .line 375
    .end local v5    # "script":Lorg/catrobat/catroid/content/Script;
    .end local v6    # "flatList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    :cond_1
    goto :goto_2

    .line 376
    .end local v3    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    :cond_2
    goto :goto_1

    .line 377
    .end local v1    # "scene":Lorg/catrobat/catroid/content/Scene;
    :cond_3
    goto :goto_0

    .line 378
    :cond_4
    return-void
.end method

.method public static getInstance()Lorg/catrobat/catroid/ProjectManager;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 111
    sget-object v0, Lorg/catrobat/catroid/ProjectManager;->instance:Lorg/catrobat/catroid/ProjectManager;

    return-object v0
.end method

.method private static initializeScripts(Lorg/catrobat/catroid/content/Project;)V
    .locals 7
    .param p0, "project"    # Lorg/catrobat/catroid/content/Project;

    .line 287
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Project;->getSceneList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Scene;

    .line 288
    .local v1, "scene":Lorg/catrobat/catroid/content/Scene;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/Sprite;

    .line 289
    .local v3, "sprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Sprite;->getScriptList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/catrobat/catroid/content/Script;

    .line 290
    .local v5, "script":Lorg/catrobat/catroid/content/Script;
    invoke-virtual {v5}, Lorg/catrobat/catroid/content/Script;->setParents()V

    .line 292
    instance-of v6, v5, Lorg/catrobat/catroid/content/WhenBounceOffScript;

    if-eqz v6, :cond_0

    .line 293
    move-object v6, v5

    check-cast v6, Lorg/catrobat/catroid/content/WhenBounceOffScript;

    invoke-virtual {v6, v1}, Lorg/catrobat/catroid/content/WhenBounceOffScript;->updateSpriteToCollideWith(Lorg/catrobat/catroid/content/Scene;)V

    .line 295
    .end local v5    # "script":Lorg/catrobat/catroid/content/Script;
    :cond_0
    goto :goto_2

    .line 296
    .end local v3    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    :cond_1
    goto :goto_1

    .line 297
    .end local v1    # "scene":Lorg/catrobat/catroid/content/Scene;
    :cond_2
    goto :goto_0

    .line 298
    :cond_3
    return-void
.end method

.method private static loadLegoEV3SettingsFromProject(Lorg/catrobat/catroid/content/Project;Landroid/content/Context;)V
    .locals 3
    .param p0, "project"    # Lorg/catrobat/catroid/content/Project;
    .param p1, "context"    # Landroid/content/Context;

    .line 311
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Project;->getSettings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Setting;

    .line 312
    .local v1, "setting":Lorg/catrobat/catroid/content/Setting;
    instance-of v2, v1, Lorg/catrobat/catroid/content/LegoEV3Setting;

    if-eqz v2, :cond_0

    .line 313
    invoke-static {p1}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->enableLegoMindstormsEV3Bricks(Landroid/content/Context;)V

    .line 314
    move-object v0, v1

    check-cast v0, Lorg/catrobat/catroid/content/LegoEV3Setting;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/LegoEV3Setting;->getSensorMapping()[Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->setLegoMindstormsEV3SensorMapping(Landroid/content/Context;[Lorg/catrobat/catroid/devices/mindstorms/ev3/sensors/EV3Sensor$Sensor;)V

    .line 315
    return-void

    .line 317
    .end local v1    # "setting":Lorg/catrobat/catroid/content/Setting;
    :cond_0
    goto :goto_0

    .line 318
    :cond_1
    return-void
.end method

.method private static loadLegoNXTSettingsFromProject(Lorg/catrobat/catroid/content/Project;Landroid/content/Context;)V
    .locals 3
    .param p0, "project"    # Lorg/catrobat/catroid/content/Project;
    .param p1, "context"    # Landroid/content/Context;

    .line 301
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Project;->getSettings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Setting;

    .line 302
    .local v1, "setting":Lorg/catrobat/catroid/content/Setting;
    instance-of v2, v1, Lorg/catrobat/catroid/content/LegoNXTSetting;

    if-eqz v2, :cond_0

    .line 303
    invoke-static {p1}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->enableLegoMindstormsNXTBricks(Landroid/content/Context;)V

    .line 304
    move-object v0, v1

    check-cast v0, Lorg/catrobat/catroid/content/LegoNXTSetting;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/LegoNXTSetting;->getSensorMapping()[Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->setLegoMindstormsNXTSensorMapping(Landroid/content/Context;[Lorg/catrobat/catroid/devices/mindstorms/nxt/sensors/NXTSensor$Sensor;)V

    .line 305
    return-void

    .line 307
    .end local v1    # "setting":Lorg/catrobat/catroid/content/Setting;
    :cond_0
    goto :goto_0

    .line 308
    :cond_1
    return-void
.end method

.method private localizeBackgroundSprites(Lorg/catrobat/catroid/content/Project;Ljava/lang/String;)V
    .locals 5
    .param p1, "project"    # Lorg/catrobat/catroid/content/Project;
    .param p2, "localizedBackgroundName"    # Ljava/lang/String;

    .line 277
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Project;->getSceneList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Scene;

    .line 278
    .local v1, "scene":Lorg/catrobat/catroid/content/Scene;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 279
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/content/Sprite;

    .line 280
    .local v2, "background":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {v2, p2, v1}, Lorg/catrobat/catroid/content/Sprite;->renameSpriteAndUpdateCollisionFormulas(Ljava/lang/String;Lorg/catrobat/catroid/content/Scene;)V

    .line 281
    iget-object v4, v2, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    invoke-virtual {v4, v3}, Lorg/catrobat/catroid/content/Look;->setZIndex(I)Z

    .line 283
    .end local v1    # "scene":Lorg/catrobat/catroid/content/Scene;
    .end local v2    # "background":Lorg/catrobat/catroid/content/Sprite;
    :cond_0
    goto :goto_0

    .line 284
    :cond_1
    return-void
.end method

.method public static makeShallowCopiesDeepAgain(Lorg/catrobat/catroid/content/Project;)V
    .locals 15
    .param p0, "project"    # Lorg/catrobat/catroid/content/Project;

    .line 232
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Project;->getSceneList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Scene;

    .line 234
    .local v1, "scene":Lorg/catrobat/catroid/content/Scene;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .local v2, "fileNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/catrobat/catroid/content/Sprite;

    .line 237
    .local v4, "sprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {v4}, Lorg/catrobat/catroid/content/Sprite;->getLookList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/catrobat/catroid/common/LookData;>;"
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "."

    const-string v8, " from "

    const-string v9, "Cannot copy: "

    const-string v10, ", "

    if-eqz v6, :cond_1

    .line 238
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/catrobat/catroid/common/LookData;

    .line 240
    .local v6, "lookData":Lorg/catrobat/catroid/common/LookData;
    invoke-virtual {v6}, Lorg/catrobat/catroid/common/LookData;->getFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 242
    :try_start_0
    invoke-virtual {v6}, Lorg/catrobat/catroid/common/LookData;->getFile()Ljava/io/File;

    move-result-object v11

    invoke-static {v11}, Lorg/catrobat/catroid/io/StorageOperations;->duplicateFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v6, v11}, Lorg/catrobat/catroid/common/LookData;->setFile(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    goto :goto_3

    .line 243
    :catch_0
    move-exception v11

    .line 244
    .local v11, "e":Ljava/io/IOException;
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 245
    sget-object v12, Lorg/catrobat/catroid/ProjectManager;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lorg/catrobat/catroid/common/LookData;->getFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", removing LookData "

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {v6}, Lorg/catrobat/catroid/common/LookData;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Project;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v4}, Lorg/catrobat/catroid/content/Sprite;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 245
    invoke-static {v12, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    .end local v11    # "e":Ljava/io/IOException;
    :cond_0
    :goto_3
    invoke-virtual {v6}, Lorg/catrobat/catroid/common/LookData;->getFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    .end local v6    # "lookData":Lorg/catrobat/catroid/common/LookData;
    goto/16 :goto_2

    .line 255
    .end local v5    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/catrobat/catroid/common/LookData;>;"
    :cond_1
    invoke-virtual {v4}, Lorg/catrobat/catroid/content/Sprite;->getSoundList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/catrobat/catroid/common/SoundInfo;>;"
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 256
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/catrobat/catroid/common/SoundInfo;

    .line 258
    .local v6, "soundInfo":Lorg/catrobat/catroid/common/SoundInfo;
    invoke-virtual {v6}, Lorg/catrobat/catroid/common/SoundInfo;->getFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 260
    :try_start_1
    invoke-virtual {v6}, Lorg/catrobat/catroid/common/SoundInfo;->getFile()Ljava/io/File;

    move-result-object v11

    invoke-static {v11}, Lorg/catrobat/catroid/io/StorageOperations;->duplicateFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v11

    invoke-virtual {v6, v11}, Lorg/catrobat/catroid/common/SoundInfo;->setFile(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 268
    goto :goto_5

    .line 261
    :catch_1
    move-exception v11

    .line 262
    .restart local v11    # "e":Ljava/io/IOException;
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 263
    sget-object v12, Lorg/catrobat/catroid/ProjectManager;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lorg/catrobat/catroid/common/SoundInfo;->getFile()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", removing SoundInfo "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {v6}, Lorg/catrobat/catroid/common/SoundInfo;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Project;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {v4}, Lorg/catrobat/catroid/content/Sprite;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 263
    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    .end local v11    # "e":Ljava/io/IOException;
    :cond_2
    :goto_5
    invoke-virtual {v6}, Lorg/catrobat/catroid/common/SoundInfo;->getFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    .end local v6    # "soundInfo":Lorg/catrobat/catroid/common/SoundInfo;
    goto :goto_4

    .line 272
    .end local v4    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    .end local v5    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/catrobat/catroid/common/SoundInfo;>;"
    :cond_3
    goto/16 :goto_1

    .line 273
    .end local v1    # "scene":Lorg/catrobat/catroid/content/Scene;
    .end local v2    # "fileNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    goto/16 :goto_0

    .line 274
    :cond_5
    return-void
.end method

.method public static removePermissionsFile(Lorg/catrobat/catroid/content/Project;)V
    .locals 3
    .param p0, "project"    # Lorg/catrobat/catroid/content/Project;

    .line 491
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Project;->getDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "permissions.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 492
    .local v0, "permissionsFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 493
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 495
    :cond_0
    return-void
.end method

.method private restorePreviousProject(Lorg/catrobat/catroid/content/Project;)V
    .locals 1
    .param p1, "previousProject"    # Lorg/catrobat/catroid/content/Project;

    .line 224
    iput-object p1, p0, Lorg/catrobat/catroid/ProjectManager;->project:Lorg/catrobat/catroid/content/Project;

    .line 225
    if-eqz p1, :cond_0

    .line 226
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Project;->getDefaultScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/ProjectManager;->currentlyPlayingScene:Lorg/catrobat/catroid/content/Scene;

    .line 228
    :cond_0
    return-void
.end method

.method public static updateArduinoValuesTo995(Lorg/catrobat/catroid/content/Project;)V
    .locals 9
    .param p0, "project"    # Lorg/catrobat/catroid/content/Project;

    .line 420
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Project;->getSceneList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Scene;

    .line 421
    .local v1, "scene":Lorg/catrobat/catroid/content/Scene;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/Sprite;

    .line 422
    .local v3, "sprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Sprite;->getScriptList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/catrobat/catroid/content/Script;

    .line 423
    .local v5, "script":Lorg/catrobat/catroid/content/Script;
    invoke-virtual {v5}, Lorg/catrobat/catroid/content/Script;->getBrickList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 424
    .local v7, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    instance-of v8, v7, Lorg/catrobat/catroid/content/bricks/ArduinoSendPWMValueBrick;

    if-eqz v8, :cond_0

    .line 425
    move-object v8, v7

    check-cast v8, Lorg/catrobat/catroid/content/bricks/ArduinoSendPWMValueBrick;

    .line 426
    .local v8, "spcBrick":Lorg/catrobat/catroid/content/bricks/ArduinoSendPWMValueBrick;
    invoke-virtual {v8}, Lorg/catrobat/catroid/content/bricks/ArduinoSendPWMValueBrick;->updateArduinoValues994to995()V

    .line 428
    .end local v7    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    .end local v8    # "spcBrick":Lorg/catrobat/catroid/content/bricks/ArduinoSendPWMValueBrick;
    :cond_0
    goto :goto_3

    .line 429
    .end local v5    # "script":Lorg/catrobat/catroid/content/Script;
    :cond_1
    goto :goto_2

    .line 430
    .end local v3    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    :cond_2
    goto :goto_1

    .line 431
    .end local v1    # "scene":Lorg/catrobat/catroid/content/Scene;
    :cond_3
    goto :goto_0

    .line 432
    :cond_4
    return-void
.end method

.method public static updateBackgroundIndexTo9999995(Lorg/catrobat/catroid/content/Project;)V
    .locals 11
    .param p0, "project"    # Lorg/catrobat/catroid/content/Project;

    .line 456
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Project;->getSceneList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Scene;

    .line 457
    .local v1, "scene":Lorg/catrobat/catroid/content/Scene;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/Sprite;

    .line 458
    .local v3, "sprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Sprite;->getScriptList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/catrobat/catroid/content/Script;

    .line 459
    .local v5, "script":Lorg/catrobat/catroid/content/Script;
    invoke-virtual {v5}, Lorg/catrobat/catroid/content/Script;->getBrickList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 460
    .local v7, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    instance-of v8, v7, Lorg/catrobat/catroid/content/bricks/SetBackgroundByIndexBrick;

    if-eqz v8, :cond_0

    .line 461
    move-object v8, v7

    check-cast v8, Lorg/catrobat/catroid/content/bricks/FormulaBrick;

    .line 462
    .local v8, "formulaBrick":Lorg/catrobat/catroid/content/bricks/FormulaBrick;
    sget-object v9, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->LOOK_INDEX:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    sget-object v10, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->BACKGROUND_INDEX:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {v8, v9, v10}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->replaceFormulaBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)V

    .end local v8    # "formulaBrick":Lorg/catrobat/catroid/content/bricks/FormulaBrick;
    goto :goto_4

    .line 464
    :cond_0
    instance-of v8, v7, Lorg/catrobat/catroid/content/bricks/SetBackgroundByIndexAndWaitBrick;

    if-eqz v8, :cond_1

    .line 465
    move-object v8, v7

    check-cast v8, Lorg/catrobat/catroid/content/bricks/FormulaBrick;

    .line 466
    .restart local v8    # "formulaBrick":Lorg/catrobat/catroid/content/bricks/FormulaBrick;
    sget-object v9, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->LOOK_INDEX:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    sget-object v10, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->BACKGROUND_WAIT_INDEX:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {v8, v9, v10}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->replaceFormulaBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)V

    goto :goto_5

    .line 464
    .end local v8    # "formulaBrick":Lorg/catrobat/catroid/content/bricks/FormulaBrick;
    :cond_1
    :goto_4
    nop

    .line 469
    .end local v7    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    :goto_5
    goto :goto_3

    .line 470
    .end local v5    # "script":Lorg/catrobat/catroid/content/Script;
    :cond_2
    goto :goto_2

    .line 471
    .end local v3    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    :cond_3
    goto :goto_1

    .line 472
    .end local v1    # "scene":Lorg/catrobat/catroid/content/Scene;
    :cond_4
    goto :goto_0

    .line 473
    :cond_5
    return-void
.end method

.method public static updateCollisionFormulasTo993(Lorg/catrobat/catroid/content/Project;)V
    .locals 12
    .param p0, "project"    # Lorg/catrobat/catroid/content/Project;

    .line 382
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Project;->getSceneList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Scene;

    .line 383
    .local v1, "scene":Lorg/catrobat/catroid/content/Scene;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/Sprite;

    .line 384
    .local v3, "sprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Sprite;->getScriptList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/catrobat/catroid/content/Script;

    .line 385
    .local v5, "script":Lorg/catrobat/catroid/content/Script;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 386
    .local v6, "flatList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    invoke-virtual {v5, v6}, Lorg/catrobat/catroid/content/Script;->addToFlatList(Ljava/util/List;)V

    .line 387
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 388
    .local v8, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    instance-of v9, v8, Lorg/catrobat/catroid/content/bricks/FormulaBrick;

    if-eqz v9, :cond_0

    .line 389
    move-object v9, v8

    check-cast v9, Lorg/catrobat/catroid/content/bricks/FormulaBrick;

    .line 390
    .local v9, "formulaBrick":Lorg/catrobat/catroid/content/bricks/FormulaBrick;
    invoke-virtual {v9}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->getFormulas()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 391
    .local v11, "formula":Lorg/catrobat/catroid/formulaeditor/Formula;
    invoke-virtual {v11}, Lorg/catrobat/catroid/formulaeditor/Formula;->updateCollisionFormulasToVersion()V

    .line 392
    .end local v11    # "formula":Lorg/catrobat/catroid/formulaeditor/Formula;
    goto :goto_4

    .line 394
    .end local v8    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    .end local v9    # "formulaBrick":Lorg/catrobat/catroid/content/bricks/FormulaBrick;
    :cond_0
    goto :goto_3

    .line 395
    .end local v5    # "script":Lorg/catrobat/catroid/content/Script;
    .end local v6    # "flatList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    :cond_1
    goto :goto_2

    .line 396
    .end local v3    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    :cond_2
    goto :goto_1

    .line 397
    .end local v1    # "scene":Lorg/catrobat/catroid/content/Scene;
    :cond_3
    goto :goto_0

    .line 398
    :cond_4
    return-void
.end method

.method public static updateCollisionScriptsTo996(Lorg/catrobat/catroid/content/Project;)V
    .locals 11
    .param p0, "project"    # Lorg/catrobat/catroid/content/Project;

    .line 436
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Project;->getSceneList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Scene;

    .line 437
    .local v1, "scene":Lorg/catrobat/catroid/content/Scene;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/Sprite;

    .line 438
    .local v3, "sprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Sprite;->getScriptList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/catrobat/catroid/content/Script;

    .line 439
    .local v5, "script":Lorg/catrobat/catroid/content/Script;
    instance-of v6, v5, Lorg/catrobat/catroid/content/WhenBounceOffScript;

    if-eqz v6, :cond_1

    .line 440
    move-object v6, v5

    check-cast v6, Lorg/catrobat/catroid/content/WhenBounceOffScript;

    .line 441
    .local v6, "bounceOffScript":Lorg/catrobat/catroid/content/WhenBounceOffScript;
    nop

    .line 442
    invoke-virtual {v6}, Lorg/catrobat/catroid/content/WhenBounceOffScript;->getSpriteToBounceOffName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "<\t-\t>"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 443
    .local v7, "spriteNames":[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v9, v7, v8

    .line 444
    .local v9, "spriteToCollideWith":Ljava/lang/String;
    aget-object v8, v7, v8

    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Sprite;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 445
    const/4 v8, 0x1

    aget-object v9, v7, v8

    .line 447
    :cond_0
    invoke-virtual {v6, v9}, Lorg/catrobat/catroid/content/WhenBounceOffScript;->setSpriteToBounceOffName(Ljava/lang/String;)V

    .line 449
    .end local v5    # "script":Lorg/catrobat/catroid/content/Script;
    .end local v6    # "bounceOffScript":Lorg/catrobat/catroid/content/WhenBounceOffScript;
    .end local v7    # "spriteNames":[Ljava/lang/String;
    .end local v9    # "spriteToCollideWith":Ljava/lang/String;
    :cond_1
    goto :goto_2

    .line 450
    .end local v3    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    :cond_2
    goto :goto_1

    .line 451
    .end local v1    # "scene":Lorg/catrobat/catroid/content/Scene;
    :cond_3
    goto :goto_0

    .line 452
    :cond_4
    return-void
.end method

.method public static updateDirectionProperty(Lorg/catrobat/catroid/content/Project;)V
    .locals 12
    .param p0, "project"    # Lorg/catrobat/catroid/content/Project;

    .line 499
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Project;->getSceneList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Scene;

    .line 500
    .local v1, "scene":Lorg/catrobat/catroid/content/Scene;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/Sprite;

    .line 501
    .local v3, "sprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Sprite;->getScriptList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/catrobat/catroid/content/Script;

    .line 502
    .local v5, "script":Lorg/catrobat/catroid/content/Script;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 503
    .local v6, "flatList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    invoke-virtual {v5, v6}, Lorg/catrobat/catroid/content/Script;->addToFlatList(Ljava/util/List;)V

    .line 504
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 505
    .local v8, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    instance-of v9, v8, Lorg/catrobat/catroid/content/bricks/FormulaBrick;

    if-eqz v9, :cond_0

    .line 506
    move-object v9, v8

    check-cast v9, Lorg/catrobat/catroid/content/bricks/FormulaBrick;

    .line 507
    .local v9, "formulaBrick":Lorg/catrobat/catroid/content/bricks/FormulaBrick;
    invoke-virtual {v9}, Lorg/catrobat/catroid/content/bricks/FormulaBrick;->getFormulas()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 508
    .local v11, "formula":Lorg/catrobat/catroid/formulaeditor/Formula;
    invoke-virtual {v11}, Lorg/catrobat/catroid/formulaeditor/Formula;->updateDirectionPropertyToVersion()V

    .line 509
    .end local v11    # "formula":Lorg/catrobat/catroid/formulaeditor/Formula;
    goto :goto_4

    .line 511
    .end local v8    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    .end local v9    # "formulaBrick":Lorg/catrobat/catroid/content/bricks/FormulaBrick;
    :cond_0
    goto :goto_3

    .line 512
    .end local v5    # "script":Lorg/catrobat/catroid/content/Script;
    .end local v6    # "flatList":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/content/bricks/Brick;>;"
    :cond_1
    goto :goto_2

    .line 513
    .end local v3    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    :cond_2
    goto :goto_1

    .line 514
    .end local v1    # "scene":Lorg/catrobat/catroid/content/Scene;
    :cond_3
    goto :goto_0

    .line 515
    :cond_4
    return-void
.end method

.method public static updateScriptsToTreeStructure(Lorg/catrobat/catroid/content/Project;)V
    .locals 9
    .param p0, "project"    # Lorg/catrobat/catroid/content/Project;

    .line 477
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Project;->getSceneList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Scene;

    .line 478
    .local v1, "scene":Lorg/catrobat/catroid/content/Scene;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/Sprite;

    .line 479
    .local v3, "sprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Sprite;->getScriptList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/catrobat/catroid/content/Script;

    .line 480
    .local v5, "script":Lorg/catrobat/catroid/content/Script;
    new-instance v6, Lorg/catrobat/catroid/content/backwardcompatibility/BrickTreeBuilder;

    invoke-direct {v6}, Lorg/catrobat/catroid/content/backwardcompatibility/BrickTreeBuilder;-><init>()V

    .line 481
    .local v6, "brickTreeBuilder":Lorg/catrobat/catroid/content/backwardcompatibility/BrickTreeBuilder;
    invoke-virtual {v5}, Lorg/catrobat/catroid/content/Script;->getBrickList()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/catrobat/catroid/content/backwardcompatibility/BrickTreeBuilder;->convertBricks(Ljava/util/List;)V

    .line 482
    invoke-virtual {v5}, Lorg/catrobat/catroid/content/Script;->getBrickList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 483
    invoke-virtual {v5}, Lorg/catrobat/catroid/content/Script;->getBrickList()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6}, Lorg/catrobat/catroid/content/backwardcompatibility/BrickTreeBuilder;->toList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 484
    .end local v5    # "script":Lorg/catrobat/catroid/content/Script;
    .end local v6    # "brickTreeBuilder":Lorg/catrobat/catroid/content/backwardcompatibility/BrickTreeBuilder;
    goto :goto_2

    .line 485
    .end local v3    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    :cond_0
    goto :goto_1

    .line 486
    .end local v1    # "scene":Lorg/catrobat/catroid/content/Scene;
    :cond_1
    goto :goto_0

    .line 487
    :cond_2
    return-void
.end method

.method public static updateSetPenColorFormulasTo994(Lorg/catrobat/catroid/content/Project;)V
    .locals 11
    .param p0, "project"    # Lorg/catrobat/catroid/content/Project;

    .line 402
    invoke-virtual {p0}, Lorg/catrobat/catroid/content/Project;->getSceneList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Scene;

    .line 403
    .local v1, "scene":Lorg/catrobat/catroid/content/Scene;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/Sprite;

    .line 404
    .local v3, "sprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Sprite;->getScriptList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/catrobat/catroid/content/Script;

    .line 405
    .local v5, "script":Lorg/catrobat/catroid/content/Script;
    invoke-virtual {v5}, Lorg/catrobat/catroid/content/Script;->getBrickList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/catrobat/catroid/content/bricks/Brick;

    .line 406
    .local v7, "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    instance-of v8, v7, Lorg/catrobat/catroid/content/bricks/SetPenColorBrick;

    if-eqz v8, :cond_0

    .line 407
    move-object v8, v7

    check-cast v8, Lorg/catrobat/catroid/content/bricks/SetPenColorBrick;

    .line 408
    .local v8, "spcBrick":Lorg/catrobat/catroid/content/bricks/SetPenColorBrick;
    sget-object v9, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHIRO_LIGHT_RED:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    sget-object v10, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PEN_COLOR_RED:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {v8, v9, v10}, Lorg/catrobat/catroid/content/bricks/SetPenColorBrick;->replaceFormulaBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)V

    .line 409
    sget-object v9, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHIRO_LIGHT_GREEN:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    sget-object v10, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PEN_COLOR_GREEN:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {v8, v9, v10}, Lorg/catrobat/catroid/content/bricks/SetPenColorBrick;->replaceFormulaBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)V

    .line 410
    sget-object v9, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PHIRO_LIGHT_BLUE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    sget-object v10, Lorg/catrobat/catroid/content/bricks/Brick$BrickField;->PEN_COLOR_BLUE:Lorg/catrobat/catroid/content/bricks/Brick$BrickField;

    invoke-virtual {v8, v9, v10}, Lorg/catrobat/catroid/content/bricks/SetPenColorBrick;->replaceFormulaBrickField(Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;Lorg/catrobat/catroid/content/bricks/Brick$FormulaField;)V

    .line 412
    .end local v7    # "brick":Lorg/catrobat/catroid/content/bricks/Brick;
    .end local v8    # "spcBrick":Lorg/catrobat/catroid/content/bricks/SetPenColorBrick;
    :cond_0
    goto :goto_3

    .line 413
    .end local v5    # "script":Lorg/catrobat/catroid/content/Script;
    :cond_1
    goto :goto_2

    .line 414
    .end local v3    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    :cond_2
    goto :goto_1

    .line 415
    .end local v1    # "scene":Lorg/catrobat/catroid/content/Scene;
    :cond_3
    goto :goto_0

    .line 416
    :cond_4
    return-void
.end method


# virtual methods
.method public addNewDownloadedProject(Ljava/lang/String;)V
    .locals 3
    .param p1, "projectName"    # Ljava/lang/String;

    .line 652
    iget-object v0, p0, Lorg/catrobat/catroid/ProjectManager;->downloadedProjects:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 653
    .local v0, "flag":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 654
    :cond_0
    iget-object v1, p0, Lorg/catrobat/catroid/ProjectManager;->downloadedProjects:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    invoke-virtual {p0}, Lorg/catrobat/catroid/ProjectManager;->saveDownloadedProjects()V

    .line 657
    :cond_1
    return-void
.end method

.method public changedProject(Ljava/lang/String;)V
    .locals 3
    .param p1, "projectName"    # Ljava/lang/String;

    .line 682
    iget-object v0, p0, Lorg/catrobat/catroid/ProjectManager;->downloadedProjects:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 683
    .local v0, "isChanged":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 684
    iget-object v1, p0, Lorg/catrobat/catroid/ProjectManager;->downloadedProjects:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    invoke-virtual {p0}, Lorg/catrobat/catroid/ProjectManager;->saveDownloadedProjects()V

    .line 687
    :cond_0
    return-void
.end method

.method public createNewEmptyProject(Ljava/lang/String;Landroid/content/Context;ZZ)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "landscapeMode"    # Z
    .param p4, "castEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 549
    invoke-static {p1, p2, p3, p4}, Lorg/catrobat/catroid/common/DefaultProjectHandler;->createAndSaveEmptyProject(Ljava/lang/String;Landroid/content/Context;ZZ)Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/ProjectManager;->project:Lorg/catrobat/catroid/content/Project;

    .line 550
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/catrobat/catroid/ProjectManager;->currentSprite:Lorg/catrobat/catroid/content/Sprite;

    .line 551
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getDefaultScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/ProjectManager;->currentlyEditedScene:Lorg/catrobat/catroid/content/Scene;

    .line 552
    iput-object v0, p0, Lorg/catrobat/catroid/ProjectManager;->currentlyPlayingScene:Lorg/catrobat/catroid/content/Scene;

    .line 553
    return-void
.end method

.method public createNewEmptyProject(Ljava/lang/String;ZZ)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "landscapeMode"    # Z
    .param p3, "castEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 541
    iget-object v0, p0, Lorg/catrobat/catroid/ProjectManager;->applicationContext:Landroid/content/Context;

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/catrobat/catroid/ProjectManager;->createNewEmptyProject(Ljava/lang/String;Landroid/content/Context;ZZ)V

    .line 542
    return-void
.end method

.method public createNewExampleProject(Ljava/lang/String;Landroid/content/Context;Lorg/catrobat/catroid/common/DefaultProjectHandler$ProjectCreatorType;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "projectCreatorType"    # Lorg/catrobat/catroid/common/DefaultProjectHandler$ProjectCreatorType;
    .param p4, "landscapeMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 565
    invoke-static {}, Lorg/catrobat/catroid/common/DefaultProjectHandler;->getInstance()Lorg/catrobat/catroid/common/DefaultProjectHandler;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/catrobat/catroid/common/DefaultProjectHandler;->setDefaultProjectCreator(Lorg/catrobat/catroid/common/DefaultProjectHandler$ProjectCreatorType;)V

    .line 566
    invoke-static {p1, p2, p4}, Lorg/catrobat/catroid/common/DefaultProjectHandler;->createAndSaveDefaultProject(Ljava/lang/String;Landroid/content/Context;Z)Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/ProjectManager;->project:Lorg/catrobat/catroid/content/Project;

    .line 567
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/catrobat/catroid/ProjectManager;->currentSprite:Lorg/catrobat/catroid/content/Sprite;

    .line 568
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getDefaultScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/ProjectManager;->currentlyEditedScene:Lorg/catrobat/catroid/content/Scene;

    .line 569
    iput-object v0, p0, Lorg/catrobat/catroid/ProjectManager;->currentlyPlayingScene:Lorg/catrobat/catroid/content/Scene;

    .line 570
    return-void
.end method

.method public createNewExampleProject(Ljava/lang/String;Lorg/catrobat/catroid/common/DefaultProjectHandler$ProjectCreatorType;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "projectCreatorType"    # Lorg/catrobat/catroid/common/DefaultProjectHandler$ProjectCreatorType;
    .param p3, "landscapeMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 557
    iget-object v0, p0, Lorg/catrobat/catroid/ProjectManager;->applicationContext:Landroid/content/Context;

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/catrobat/catroid/ProjectManager;->createNewExampleProject(Ljava/lang/String;Landroid/content/Context;Lorg/catrobat/catroid/common/DefaultProjectHandler$ProjectCreatorType;Z)V

    .line 558
    return-void
.end method

.method public deleteDownloadedProjectInformation(Ljava/lang/String;)V
    .locals 1
    .param p1, "projectName"    # Ljava/lang/String;

    .line 678
    iget-object v0, p0, Lorg/catrobat/catroid/ProjectManager;->downloadedProjects:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    return-void
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/catrobat/catroid/ProjectManager;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentProject()Lorg/catrobat/catroid/content/Project;
    .locals 1

    .line 573
    iget-object v0, p0, Lorg/catrobat/catroid/ProjectManager;->project:Lorg/catrobat/catroid/content/Project;

    return-object v0
.end method

.method public getCurrentSprite()Lorg/catrobat/catroid/content/Sprite;
    .locals 1

    .line 624
    iget-object v0, p0, Lorg/catrobat/catroid/ProjectManager;->currentSprite:Lorg/catrobat/catroid/content/Sprite;

    return-object v0
.end method

.method public getCurrentlyEditedScene()Lorg/catrobat/catroid/content/Scene;
    .locals 1

    .line 599
    iget-object v0, p0, Lorg/catrobat/catroid/ProjectManager;->currentlyEditedScene:Lorg/catrobat/catroid/content/Scene;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/ProjectManager;->project:Lorg/catrobat/catroid/content/Project;

    if-eqz v0, :cond_0

    .line 600
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getDefaultScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/ProjectManager;->currentlyEditedScene:Lorg/catrobat/catroid/content/Scene;

    .line 602
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ProjectManager;->currentlyEditedScene:Lorg/catrobat/catroid/content/Scene;

    return-object v0
.end method

.method public getCurrentlyPlayingScene()Lorg/catrobat/catroid/content/Scene;
    .locals 1

    .line 577
    iget-object v0, p0, Lorg/catrobat/catroid/ProjectManager;->currentlyPlayingScene:Lorg/catrobat/catroid/content/Scene;

    if-nez v0, :cond_0

    .line 578
    invoke-virtual {p0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentlyEditedScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/ProjectManager;->currentlyPlayingScene:Lorg/catrobat/catroid/content/Scene;

    .line 580
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ProjectManager;->currentlyPlayingScene:Lorg/catrobat/catroid/content/Scene;

    return-object v0
.end method

.method public getGlobalListConflicts(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Project;)Ljava/util/List;
    .locals 9
    .param p1, "project1"    # Lorg/catrobat/catroid/content/Project;
    .param p2, "project2"    # Lorg/catrobat/catroid/content/Project;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/content/Project;",
            "Lorg/catrobat/catroid/content/Project;",
            ")",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserList;",
            ">;"
        }
    .end annotation

    .line 336
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Project;->getUserLists()Ljava/util/List;

    move-result-object v0

    .line 337
    .local v0, "project1GlobalLists":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/UserList;>;"
    invoke-virtual {p2}, Lorg/catrobat/catroid/content/Project;->getUserLists()Ljava/util/List;

    move-result-object v1

    .line 338
    .local v1, "project2GlobalLists":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/UserList;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 339
    .local v2, "conflicts":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/UserList;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 340
    .local v4, "project1GlobalList":Lorg/catrobat/catroid/formulaeditor/UserList;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 341
    .local v6, "project2GlobalList":Lorg/catrobat/catroid/formulaeditor/UserList;
    invoke-virtual {v4}, Lorg/catrobat/catroid/formulaeditor/UserList;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lorg/catrobat/catroid/formulaeditor/UserList;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v4}, Lorg/catrobat/catroid/formulaeditor/UserList;->getValue()Ljava/util/List;

    move-result-object v7

    .line 342
    invoke-virtual {v6}, Lorg/catrobat/catroid/formulaeditor/UserList;->getValue()Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 343
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    .end local v6    # "project2GlobalList":Lorg/catrobat/catroid/formulaeditor/UserList;
    :cond_0
    goto :goto_1

    .line 346
    .end local v4    # "project1GlobalList":Lorg/catrobat/catroid/formulaeditor/UserList;
    :cond_1
    goto :goto_0

    .line 347
    :cond_2
    return-object v2
.end method

.method public getGlobalVariableConflicts(Lorg/catrobat/catroid/content/Project;Lorg/catrobat/catroid/content/Project;)Ljava/util/List;
    .locals 9
    .param p1, "project1"    # Lorg/catrobat/catroid/content/Project;
    .param p2, "project2"    # Lorg/catrobat/catroid/content/Project;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/catrobat/catroid/content/Project;",
            "Lorg/catrobat/catroid/content/Project;",
            ")",
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/formulaeditor/UserVariable;",
            ">;"
        }
    .end annotation

    .line 321
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Project;->getUserVariables()Ljava/util/List;

    move-result-object v0

    .line 322
    .local v0, "project1GlobalVars":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/UserVariable;>;"
    invoke-virtual {p2}, Lorg/catrobat/catroid/content/Project;->getUserVariables()Ljava/util/List;

    move-result-object v1

    .line 323
    .local v1, "project2GlobalVars":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/UserVariable;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 324
    .local v2, "conflicts":Ljava/util/List;, "Ljava/util/List<Lorg/catrobat/catroid/formulaeditor/UserVariable;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 325
    .local v4, "project1GlobalVar":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/catrobat/catroid/formulaeditor/UserVariable;

    .line 326
    .local v6, "project2GlobalVar":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    invoke-virtual {v4}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v4}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 327
    invoke-virtual {v6}, Lorg/catrobat/catroid/formulaeditor/UserVariable;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 328
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    .end local v6    # "project2GlobalVar":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    :cond_0
    goto :goto_1

    .line 331
    .end local v4    # "project1GlobalVar":Lorg/catrobat/catroid/formulaeditor/UserVariable;
    :cond_1
    goto :goto_0

    .line 332
    :cond_2
    return-object v2
.end method

.method public getStartScene()Lorg/catrobat/catroid/content/Scene;
    .locals 1

    .line 588
    iget-object v0, p0, Lorg/catrobat/catroid/ProjectManager;->startScene:Lorg/catrobat/catroid/content/Scene;

    if-nez v0, :cond_0

    .line 589
    invoke-virtual {p0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentlyEditedScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/ProjectManager;->startScene:Lorg/catrobat/catroid/content/Scene;

    .line 591
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/ProjectManager;->startScene:Lorg/catrobat/catroid/content/Scene;

    return-object v0
.end method

.method public initializeDefaultProject()Z
    .locals 1

    .line 519
    iget-object v0, p0, Lorg/catrobat/catroid/ProjectManager;->applicationContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/ProjectManager;->initializeDefaultProject(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public initializeDefaultProject(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 528
    :try_start_0
    invoke-static {p1}, Lorg/catrobat/catroid/common/DefaultProjectHandler;->createAndSaveDefaultProject(Landroid/content/Context;)Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/ProjectManager;->project:Lorg/catrobat/catroid/content/Project;

    .line 529
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/catrobat/catroid/ProjectManager;->currentSprite:Lorg/catrobat/catroid/content/Sprite;

    .line 530
    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getDefaultScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/ProjectManager;->currentlyEditedScene:Lorg/catrobat/catroid/content/Scene;

    .line 531
    iput-object v0, p0, Lorg/catrobat/catroid/ProjectManager;->currentlyPlayingScene:Lorg/catrobat/catroid/content/Scene;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    const/4 v0, 0x1

    return v0

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, "ioException":Ljava/io/IOException;
    sget-object v1, Lorg/catrobat/catroid/ProjectManager;->TAG:Ljava/lang/String;

    const-string v2, "Cannot initialize default project."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 535
    const/4 v1, 0x0

    return v1
.end method

.method public isChangedProject(Lorg/catrobat/catroid/content/Project;)Z
    .locals 3
    .param p1, "project"    # Lorg/catrobat/catroid/content/Project;

    .line 669
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Project;->getName()Ljava/lang/String;

    move-result-object v0

    .line 670
    .local v0, "projectName":Ljava/lang/String;
    iget-object v1, p0, Lorg/catrobat/catroid/ProjectManager;->downloadedProjects:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 671
    .local v1, "isChanged":Ljava/lang/Boolean;
    if-nez v1, :cond_0

    .line 672
    const/4 v2, 0x1

    return v2

    .line 674
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method

.method public isCurrentProjectLandscapeMode()Z
    .locals 3

    .line 606
    invoke-virtual {p0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getXmlHeader()Lorg/catrobat/catroid/content/XmlHeader;

    move-result-object v0

    iget v0, v0, Lorg/catrobat/catroid/content/XmlHeader;->virtualScreenWidth:I

    .line 607
    .local v0, "virtualScreenWidth":I
    invoke-virtual {p0}, Lorg/catrobat/catroid/ProjectManager;->getCurrentProject()Lorg/catrobat/catroid/content/Project;

    move-result-object v1

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getXmlHeader()Lorg/catrobat/catroid/content/XmlHeader;

    move-result-object v1

    iget v1, v1, Lorg/catrobat/catroid/content/XmlHeader;->virtualScreenHeight:I

    .line 609
    .local v1, "virtualScreenHeight":I
    if-le v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public loadDownloadedProjects()V
    .locals 5

    .line 699
    iget-object v0, p0, Lorg/catrobat/catroid/ProjectManager;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 700
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 701
    .local v1, "gson":Lcom/google/gson/Gson;
    const/4 v2, 0x0

    .line 702
    .local v2, "json":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 703
    const/4 v3, 0x0

    const-string v4, "downloaded_projects"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 704
    if-eqz v2, :cond_0

    .line 705
    new-instance v3, Lorg/catrobat/catroid/ProjectManager$1;

    invoke-direct {v3, p0}, Lorg/catrobat/catroid/ProjectManager$1;-><init>(Lorg/catrobat/catroid/ProjectManager;)V

    .line 706
    invoke-virtual {v3}, Lorg/catrobat/catroid/ProjectManager$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 707
    .local v3, "type":Ljava/lang/reflect/Type;
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    iput-object v4, p0, Lorg/catrobat/catroid/ProjectManager;->downloadedProjects:Ljava/util/HashMap;

    .line 708
    .end local v3    # "type":Ljava/lang/reflect/Type;
    goto :goto_0

    .line 709
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/catrobat/catroid/ProjectManager;->downloadedProjects:Ljava/util/HashMap;

    .line 712
    :cond_1
    :goto_0
    return-void
.end method

.method public loadProject(Ljava/io/File;)V
    .locals 1
    .param p1, "projectDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/exceptions/ProjectException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lorg/catrobat/catroid/ProjectManager;->applicationContext:Landroid/content/Context;

    invoke-virtual {p0, p1, v0}, Lorg/catrobat/catroid/ProjectManager;->loadProject(Ljava/io/File;Landroid/content/Context;)V

    .line 116
    return-void
.end method

.method public loadProject(Ljava/io/File;Landroid/content/Context;)V
    .locals 7
    .param p1, "projectDir"    # Ljava/io/File;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/catrobat/catroid/exceptions/ProjectException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 124
    iget-object v0, p0, Lorg/catrobat/catroid/ProjectManager;->project:Lorg/catrobat/catroid/content/Project;

    .line 127
    .local v0, "previousProject":Lorg/catrobat/catroid/content/Project;
    :try_start_0
    invoke-static {}, Lorg/catrobat/catroid/io/XstreamSerializer;->getInstance()Lorg/catrobat/catroid/io/XstreamSerializer;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/catrobat/catroid/io/XstreamSerializer;->loadProject(Ljava/io/File;Landroid/content/Context;)Lorg/catrobat/catroid/content/Project;

    move-result-object v1

    iput-object v1, p0, Lorg/catrobat/catroid/ProjectManager;->project:Lorg/catrobat/catroid/content/Project;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    nop

    .line 134
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getCatrobatLanguageVersion()D

    move-result-wide v1

    const-wide v3, 0x3ff1c28f5c28f5c3L    # 1.11

    cmpl-double v1, v1, v3

    if-gtz v1, :cond_15

    .line 138
    iget-object v1, p0, Lorg/catrobat/catroid/ProjectManager;->project:Lorg/catrobat/catroid/content/Project;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getCatrobatLanguageVersion()D

    move-result-wide v1

    const-wide v5, 0x3feccccccccccccdL    # 0.9

    cmpg-double v1, v1, v5

    if-gez v1, :cond_1

    iget-object v1, p0, Lorg/catrobat/catroid/ProjectManager;->project:Lorg/catrobat/catroid/content/Project;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getCatrobatLanguageVersion()D

    move-result-wide v1

    const-wide v5, 0x3fe999999999999aL    # 0.8

    cmpl-double v1, v1, v5

    if-nez v1, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/ProjectManager;->restorePreviousProject(Lorg/catrobat/catroid/content/Project;)V

    .line 140
    new-instance v1, Lorg/catrobat/catroid/exceptions/CompatibilityProjectException;

    const v2, 0x7f1202f5

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/exceptions/CompatibilityProjectException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/catrobat/catroid/ProjectManager;->project:Lorg/catrobat/catroid/content/Project;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getCatrobatLanguageVersion()D

    move-result-wide v1

    const-wide v5, 0x3fed1eb851eb851fL    # 0.91

    cmpg-double v1, v1, v5

    if-gtz v1, :cond_2

    .line 144
    iget-object v1, p0, Lorg/catrobat/catroid/ProjectManager;->project:Lorg/catrobat/catroid/content/Project;

    sget-object v2, Lorg/catrobat/catroid/common/ScreenModes;->STRETCH:Lorg/catrobat/catroid/common/ScreenModes;

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/Project;->setScreenMode(Lorg/catrobat/catroid/common/ScreenModes;)V

    .line 146
    :cond_2
    iget-object v1, p0, Lorg/catrobat/catroid/ProjectManager;->project:Lorg/catrobat/catroid/content/Project;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getCatrobatLanguageVersion()D

    move-result-wide v1

    const-wide v5, 0x3fefbe76c8b43958L    # 0.992

    cmpg-double v1, v1, v5

    if-gtz v1, :cond_3

    .line 147
    iget-object v1, p0, Lorg/catrobat/catroid/ProjectManager;->project:Lorg/catrobat/catroid/content/Project;

    invoke-static {v1}, Lorg/catrobat/catroid/ProjectManager;->updateCollisionFormulasTo993(Lorg/catrobat/catroid/content/Project;)V

    .line 149
    :cond_3
    iget-object v1, p0, Lorg/catrobat/catroid/ProjectManager;->project:Lorg/catrobat/catroid/content/Project;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getCatrobatLanguageVersion()D

    move-result-wide v1

    const-wide v5, 0x3fefc6a7ef9db22dL    # 0.993

    cmpg-double v1, v1, v5

    if-gtz v1, :cond_4

    .line 150
    iget-object v1, p0, Lorg/catrobat/catroid/ProjectManager;->project:Lorg/catrobat/catroid/content/Project;

    invoke-static {v1}, Lorg/catrobat/catroid/ProjectManager;->updateSetPenColorFormulasTo994(Lorg/catrobat/catroid/content/Project;)V

    .line 152
    :cond_4
    iget-object v1, p0, Lorg/catrobat/catroid/ProjectManager;->project:Lorg/catrobat/catroid/content/Project;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getCatrobatLanguageVersion()D

    move-result-wide v1

    const-wide v5, 0x3fefced916872b02L    # 0.994

    cmpg-double v1, v1, v5

    if-gtz v1, :cond_5

    .line 153
    iget-object v1, p0, Lorg/catrobat/catroid/ProjectManager;->project:Lorg/catrobat/catroid/content/Project;

    invoke-static {v1}, Lorg/catrobat/catroid/ProjectManager;->updateArduinoValuesTo995(Lorg/catrobat/catroid/content/Project;)V

    .line 155
    :cond_5
    iget-object v1, p0, Lorg/catrobat/catroid/ProjectManager;->project:Lorg/catrobat/catroid/content/Project;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getCatrobatLanguageVersion()D

    move-result-wide v1

    const-wide v5, 0x3fefd70a3d70a3d7L    # 0.995

    cmpg-double v1, v1, v5

    if-gtz v1, :cond_6

    .line 156
    iget-object v1, p0, Lorg/catrobat/catroid/ProjectManager;->project:Lorg/catrobat/catroid/content/Project;

    invoke-static {v1}, Lorg/catrobat/catroid/ProjectManager;->updateCollisionScriptsTo996(Lorg/catrobat/catroid/content/Project;)V

    .line 158
    :cond_6
    iget-object v1, p0, Lorg/catrobat/catroid/ProjectManager;->project:Lorg/catrobat/catroid/content/Project;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getCatrobatLanguageVersion()D

    move-result-wide v1

    const-wide v5, 0x3feff7ced916872bL    # 0.999

    cmpg-double v1, v1, v5

    if-gtz v1, :cond_7

    .line 159
    iget-object v1, p0, Lorg/catrobat/catroid/ProjectManager;->project:Lorg/catrobat/catroid/content/Project;

    invoke-static {v1}, Lorg/catrobat/catroid/ProjectManager;->makeShallowCopiesDeepAgain(Lorg/catrobat/catroid/content/Project;)V

    .line 161
    :cond_7
    iget-object v1, p0, Lorg/catrobat/catroid/ProjectManager;->project:Lorg/catrobat/catroid/content/Project;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getCatrobatLanguageVersion()D

    move-result-wide v1

    const-wide v5, 0x3feffa43fe5c91d1L    # 0.9993

    cmpg-double v1, v1, v5

    if-gtz v1, :cond_8

    .line 162
    iget-object v1, p0, Lorg/catrobat/catroid/ProjectManager;->project:Lorg/catrobat/catroid/content/Project;

    invoke-static {v1}, Lorg/catrobat/catroid/ProjectManager;->updateScriptsToTreeStructure(Lorg/catrobat/catroid/content/Project;)V

    .line 164
    :cond_8
    iget-object v1, p0, Lorg/catrobat/catroid/ProjectManager;->project:Lorg/catrobat/catroid/content/Project;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getCatrobatLanguageVersion()D

    move-result-wide v1

    const-wide v5, 0x3fefff583a53b8e5L    # 0.99992

    cmpg-double v1, v1, v5

    if-gtz v1, :cond_9

    .line 165
    iget-object v1, p0, Lorg/catrobat/catroid/ProjectManager;->project:Lorg/catrobat/catroid/content/Project;

    invoke-static {v1}, Lorg/catrobat/catroid/ProjectManager;->removePermissionsFile(Lorg/catrobat/catroid/content/Project;)V

    .line 167
    :cond_9
    iget-object v1, p0, Lorg/catrobat/catroid/ProjectManager;->project:Lorg/catrobat/catroid/content/Project;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getCatrobatLanguageVersion()D

    move-result-wide v1

    const-wide v5, 0x3feffffef39085f5L    # 0.9999995

    cmpg-double v1, v1, v5

    if-gtz v1, :cond_a

    .line 168
    iget-object v1, p0, Lorg/catrobat/catroid/ProjectManager;->project:Lorg/catrobat/catroid/content/Project;

    invoke-static {v1}, Lorg/catrobat/catroid/ProjectManager;->updateBackgroundIndexTo9999995(Lorg/catrobat/catroid/content/Project;)V

    .line 170
    :cond_a
    iget-object v1, p0, Lorg/catrobat/catroid/ProjectManager;->project:Lorg/catrobat/catroid/content/Project;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getCatrobatLanguageVersion()D

    move-result-wide v1

    const-wide v5, 0x408f3f3333333333L    # 999.9

    cmpg-double v1, v1, v5

    if-gez v1, :cond_b

    .line 171
    iget-object v1, p0, Lorg/catrobat/catroid/ProjectManager;->project:Lorg/catrobat/catroid/content/Project;

    invoke-static {v1}, Lorg/catrobat/catroid/ProjectManager;->flattenAllLists(Lorg/catrobat/catroid/content/Project;)V

    .line 173
    :cond_b
    iget-object v1, p0, Lorg/catrobat/catroid/ProjectManager;->project:Lorg/catrobat/catroid/content/Project;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getCatrobatLanguageVersion()D

    move-result-wide v1

    const-wide v5, 0x3ff07ae147ae147bL    # 1.03

    cmpg-double v1, v1, v5

    if-gtz v1, :cond_c

    .line 174
    iget-object v1, p0, Lorg/catrobat/catroid/ProjectManager;->project:Lorg/catrobat/catroid/content/Project;

    invoke-static {v1}, Lorg/catrobat/catroid/ProjectManager;->updateDirectionProperty(Lorg/catrobat/catroid/content/Project;)V

    .line 177
    :cond_c
    iget-object v1, p0, Lorg/catrobat/catroid/ProjectManager;->project:Lorg/catrobat/catroid/content/Project;

    invoke-virtual {v1, v3, v4}, Lorg/catrobat/catroid/content/Project;->setCatrobatLanguageVersion(D)V

    .line 179
    iget-object v1, p0, Lorg/catrobat/catroid/ProjectManager;->project:Lorg/catrobat/catroid/content/Project;

    const v2, 0x7f120052

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/catrobat/catroid/ProjectManager;->localizeBackgroundSprites(Lorg/catrobat/catroid/content/Project;Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lorg/catrobat/catroid/ProjectManager;->project:Lorg/catrobat/catroid/content/Project;

    invoke-static {v1}, Lorg/catrobat/catroid/ProjectManager;->initializeScripts(Lorg/catrobat/catroid/content/Project;)V

    .line 182
    iget-object v1, p0, Lorg/catrobat/catroid/ProjectManager;->project:Lorg/catrobat/catroid/content/Project;

    invoke-static {v1, p2}, Lorg/catrobat/catroid/ProjectManager;->loadLegoNXTSettingsFromProject(Lorg/catrobat/catroid/content/Project;Landroid/content/Context;)V

    .line 183
    iget-object v1, p0, Lorg/catrobat/catroid/ProjectManager;->project:Lorg/catrobat/catroid/content/Project;

    invoke-static {v1, p2}, Lorg/catrobat/catroid/ProjectManager;->loadLegoEV3SettingsFromProject(Lorg/catrobat/catroid/content/Project;Landroid/content/Context;)V

    .line 185
    iget-object v1, p0, Lorg/catrobat/catroid/ProjectManager;->project:Lorg/catrobat/catroid/content/Project;

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Project;->getRequiredResources()Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    move-result-object v1

    .line 187
    .local v1, "resourcesSet":Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;
    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_d

    .line 188
    invoke-static {p2, v3}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->setPhiroSharedPreferenceEnabled(Landroid/content/Context;Z)V

    .line 191
    :cond_d
    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 192
    invoke-static {p2, v3}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->setArduinoSharedPreferenceEnabled(Landroid/content/Context;Z)V

    .line 195
    :cond_e
    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 196
    invoke-static {p2, v3}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->setAISpeechReconitionPreferenceEnabled(Landroid/content/Context;Z)V

    .line 199
    :cond_f
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 200
    invoke-static {p2, v3}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->setAIFaceDetectionPreferenceEnabled(Landroid/content/Context;Z)V

    .line 203
    :cond_10
    const/16 v2, 0x1b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 204
    invoke-static {p2, v3}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->setAIPoseDetectionPreferenceEnabled(Landroid/content/Context;Z)V

    .line 207
    :cond_11
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 208
    invoke-static {p2, v3}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->setAISpeechSynthetizationPreferenceEnabled(Landroid/content/Context;Z)V

    .line 211
    :cond_12
    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 212
    invoke-static {p2, v3}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->setAITextRecognitionPreferenceEnabled(Landroid/content/Context;Z)V

    .line 215
    :cond_13
    const/16 v2, 0x1c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 216
    invoke-static {p2, v3}, Lorg/catrobat/catroid/ui/settingsfragments/SettingsFragment;->setAIObjectDetectionPreferenceEnabled(Landroid/content/Context;Z)V

    .line 219
    :cond_14
    iget-object v2, p0, Lorg/catrobat/catroid/ProjectManager;->project:Lorg/catrobat/catroid/content/Project;

    invoke-virtual {v2}, Lorg/catrobat/catroid/content/Project;->getDefaultScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v2

    iput-object v2, p0, Lorg/catrobat/catroid/ProjectManager;->currentlyPlayingScene:Lorg/catrobat/catroid/content/Scene;

    .line 220
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/catrobat/catroid/ProjectManager;->currentSprite:Lorg/catrobat/catroid/content/Sprite;

    .line 221
    return-void

    .line 135
    .end local v1    # "resourcesSet":Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;
    :cond_15
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/ProjectManager;->restorePreviousProject(Lorg/catrobat/catroid/content/Project;)V

    .line 136
    new-instance v1, Lorg/catrobat/catroid/exceptions/OutdatedVersionProjectException;

    const v2, 0x7f1202f3

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/catrobat/catroid/exceptions/OutdatedVersionProjectException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 128
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lorg/catrobat/catroid/ProjectManager;->TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-direct {p0, v0}, Lorg/catrobat/catroid/ProjectManager;->restorePreviousProject(Lorg/catrobat/catroid/content/Project;)V

    .line 131
    new-instance v2, Lorg/catrobat/catroid/exceptions/LoadingProjectException;

    const v3, 0x7f1202ea

    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/catrobat/catroid/exceptions/LoadingProjectException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public moveChangedFlag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/lang/String;

    .line 715
    iget-object v0, p0, Lorg/catrobat/catroid/ProjectManager;->downloadedProjects:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 716
    .local v0, "value":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 717
    iget-object v1, p0, Lorg/catrobat/catroid/ProjectManager;->downloadedProjects:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    iget-object v1, p0, Lorg/catrobat/catroid/ProjectManager;->downloadedProjects:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    invoke-virtual {p0}, Lorg/catrobat/catroid/ProjectManager;->saveDownloadedProjects()V

    .line 721
    :cond_0
    return-void
.end method

.method public resetChangedFlag(Lorg/catrobat/catroid/content/Project;)V
    .locals 4
    .param p1, "project"    # Lorg/catrobat/catroid/content/Project;

    .line 660
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Project;->getName()Ljava/lang/String;

    move-result-object v0

    .line 661
    .local v0, "projectName":Ljava/lang/String;
    iget-object v1, p0, Lorg/catrobat/catroid/ProjectManager;->downloadedProjects:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 662
    .local v1, "isChanged":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 663
    iget-object v2, p0, Lorg/catrobat/catroid/ProjectManager;->downloadedProjects:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    invoke-virtual {p0}, Lorg/catrobat/catroid/ProjectManager;->saveDownloadedProjects()V

    .line 666
    :cond_0
    return-void
.end method

.method public resetProjectManager()V
    .locals 1

    .line 724
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/ProjectManager;->currentlyEditedScene:Lorg/catrobat/catroid/content/Scene;

    .line 725
    iput-object v0, p0, Lorg/catrobat/catroid/ProjectManager;->currentlyPlayingScene:Lorg/catrobat/catroid/content/Scene;

    .line 726
    iput-object v0, p0, Lorg/catrobat/catroid/ProjectManager;->currentSprite:Lorg/catrobat/catroid/content/Sprite;

    .line 727
    return-void
.end method

.method public saveDownloadedProjects()V
    .locals 5

    .line 690
    iget-object v0, p0, Lorg/catrobat/catroid/ProjectManager;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 691
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 692
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 693
    .local v2, "gson":Lcom/google/gson/Gson;
    iget-object v3, p0, Lorg/catrobat/catroid/ProjectManager;->downloadedProjects:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 694
    .local v3, "json":Ljava/lang/String;
    const-string v4, "downloaded_projects"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 695
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 696
    return-void
.end method

.method public setCurrentProject(Lorg/catrobat/catroid/content/Project;)V
    .locals 1
    .param p1, "project"    # Lorg/catrobat/catroid/content/Project;

    .line 613
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/ProjectManager;->currentSprite:Lorg/catrobat/catroid/content/Sprite;

    .line 615
    iput-object p1, p0, Lorg/catrobat/catroid/ProjectManager;->project:Lorg/catrobat/catroid/content/Project;

    .line 617
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Project;->getSceneList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 618
    invoke-virtual {p1}, Lorg/catrobat/catroid/content/Project;->getDefaultScene()Lorg/catrobat/catroid/content/Scene;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/ProjectManager;->currentlyEditedScene:Lorg/catrobat/catroid/content/Scene;

    .line 619
    iput-object v0, p0, Lorg/catrobat/catroid/ProjectManager;->currentlyPlayingScene:Lorg/catrobat/catroid/content/Scene;

    .line 621
    :cond_0
    return-void
.end method

.method public setCurrentSceneAndSprite(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "sceneName"    # Ljava/lang/String;
    .param p2, "spriteName"    # Ljava/lang/String;

    .line 632
    iget-object v0, p0, Lorg/catrobat/catroid/ProjectManager;->project:Lorg/catrobat/catroid/content/Project;

    invoke-virtual {v0}, Lorg/catrobat/catroid/content/Project;->getSceneList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/content/Scene;

    .line 633
    .local v1, "scene":Lorg/catrobat/catroid/content/Scene;
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 634
    invoke-virtual {p0, v1}, Lorg/catrobat/catroid/ProjectManager;->setCurrentlyEditedScene(Lorg/catrobat/catroid/content/Scene;)V

    .line 635
    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scene;->getSpriteList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/catrobat/catroid/content/Sprite;

    .line 636
    .local v3, "sprite":Lorg/catrobat/catroid/content/Sprite;
    invoke-virtual {v3}, Lorg/catrobat/catroid/content/Sprite;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 637
    iput-object v3, p0, Lorg/catrobat/catroid/ProjectManager;->currentSprite:Lorg/catrobat/catroid/content/Sprite;

    .line 638
    const/4 v0, 0x1

    return v0

    .line 640
    .end local v3    # "sprite":Lorg/catrobat/catroid/content/Sprite;
    :cond_0
    goto :goto_1

    .line 642
    .end local v1    # "scene":Lorg/catrobat/catroid/content/Scene;
    :cond_1
    goto :goto_0

    .line 643
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public setCurrentSprite(Lorg/catrobat/catroid/content/Sprite;)V
    .locals 0
    .param p1, "sprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 628
    iput-object p1, p0, Lorg/catrobat/catroid/ProjectManager;->currentSprite:Lorg/catrobat/catroid/content/Sprite;

    .line 629
    return-void
.end method

.method public setCurrentlyEditedScene(Lorg/catrobat/catroid/content/Scene;)V
    .locals 0
    .param p1, "scene"    # Lorg/catrobat/catroid/content/Scene;

    .line 647
    iput-object p1, p0, Lorg/catrobat/catroid/ProjectManager;->currentlyEditedScene:Lorg/catrobat/catroid/content/Scene;

    .line 648
    iput-object p1, p0, Lorg/catrobat/catroid/ProjectManager;->currentlyPlayingScene:Lorg/catrobat/catroid/content/Scene;

    .line 649
    return-void
.end method

.method public setCurrentlyPlayingScene(Lorg/catrobat/catroid/content/Scene;)V
    .locals 0
    .param p1, "scene"    # Lorg/catrobat/catroid/content/Scene;

    .line 584
    iput-object p1, p0, Lorg/catrobat/catroid/ProjectManager;->currentlyPlayingScene:Lorg/catrobat/catroid/content/Scene;

    .line 585
    return-void
.end method

.method public setStartScene(Lorg/catrobat/catroid/content/Scene;)V
    .locals 0
    .param p1, "scene"    # Lorg/catrobat/catroid/content/Scene;

    .line 595
    iput-object p1, p0, Lorg/catrobat/catroid/ProjectManager;->startScene:Lorg/catrobat/catroid/content/Scene;

    .line 596
    return-void
.end method
