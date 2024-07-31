.class public Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;
.super Ljava/lang/Object;
.source "ProjectAndSceneScreenshotLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotLoader;,
        Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;
    }
.end annotation


# static fields
.field private static final CACHE_MAX_SIZE:I = 0x19

.field private static final INITIAL_VALUE:I = 0xd

.field private static final LOAD_FACTOR:F = 0.75f

.field private static final POOL_SIZE:I = 0x5

.field private static placeholderImages:[I


# instance fields
.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private imageCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private imageViews:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private thumbnailHeight:I

.field private thumbnailWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;->placeholderImages:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0800dd
        0x7f080103
        0x7f080276
        0x7f0802b8
        0x7f0802ba
        0x7f0802cc
    .end array-data
.end method

.method public constructor <init>(II)V
    .locals 4
    .param p1, "thumbnailWidth"    # I
    .param p2, "thumbnailHeight"    # I

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;->imageViews:Ljava/util/Map;

    .line 85
    new-instance v0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$1;

    const/16 v1, 0xd

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$1;-><init>(Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;IFZ)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;->imageCache:Ljava/util/Map;

    .line 97
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 98
    iput p1, p0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;->thumbnailWidth:I

    .line 99
    iput p2, p0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;->thumbnailHeight:I

    .line 100
    return-void
.end method

.method static synthetic access$000(Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;)Z
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;
    .param p1, "x1"    # Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;

    .line 56
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;->imageViewReused(Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;)I
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;

    .line 56
    iget v0, p0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;->thumbnailWidth:I

    return v0
.end method

.method static synthetic access$200(Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;)I
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;

    .line 56
    iget v0, p0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;->thumbnailHeight:I

    return v0
.end method

.method static synthetic access$300(Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;

    .line 56
    iget-object v0, p0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;->imageCache:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400()[I
    .locals 1

    .line 56
    sget-object v0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;->placeholderImages:[I

    return-object v0
.end method

.method private imageViewReused(Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;)Z
    .locals 3
    .param p1, "projectScreenshotData"    # Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;

    .line 270
    iget-object v0, p0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;->imageViews:Ljava/util/Map;

    iget-object v1, p1, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;->imageView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 271
    .local v0, "tag":Ljava/lang/String;
    const-string v1, ""

    .line 272
    .local v1, "screenshotName":Ljava/lang/String;
    iget-object v2, p1, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;->projectName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 273
    iget-object v1, p1, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;->projectName:Ljava/lang/String;

    .line 275
    :cond_0
    iget-object v2, p1, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;->sceneName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 276
    iget-object v2, p1, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;->sceneName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 278
    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method


# virtual methods
.method public getScreenshotFile(Ljava/lang/String;Ljava/lang/String;Z)Ljava/io/File;
    .locals 7
    .param p1, "projectName"    # Ljava/lang/String;
    .param p2, "sceneName"    # Ljava/lang/String;
    .param p3, "isBackpackScene"    # Z

    .line 127
    new-instance v6, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;-><init>(Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;Ljava/lang/String;Ljava/lang/String;ZLandroid/widget/ImageView;)V

    .line 128
    .local v0, "screenshotData":Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;
    new-instance v1, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotLoader;

    invoke-direct {v1, p0, v0}, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotLoader;-><init>(Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;)V

    .line 129
    .local v1, "screenshotLoader":Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotLoader;
    invoke-virtual {v1}, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotLoader;->getScreenshotFile()Ljava/io/File;

    move-result-object v2

    return-object v2
.end method

.method public getScreenshotSceneName(Ljava/io/File;)Ljava/lang/String;
    .locals 11
    .param p1, "projectDir"    # Ljava/io/File;

    .line 133
    new-instance v0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$2;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$2;-><init>(Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;)V

    .line 139
    .local v0, "filter":Ljava/io/FilenameFilter;
    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 140
    .local v1, "projectScreenshots":[Ljava/io/File;
    const/4 v2, 0x0

    if-eqz v1, :cond_6

    array-length v3, v1

    if-eqz v3, :cond_0

    goto :goto_2

    .line 143
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local v3, "screenshots":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_2

    aget-object v8, v4, v7

    .line 145
    .local v8, "scene":Ljava/io/File;
    invoke-virtual {v8, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v9

    .line 146
    .local v9, "sceneScreenshots":[Ljava/io/File;
    if-eqz v9, :cond_1

    array-length v10, v9

    if-lez v10, :cond_1

    .line 147
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 144
    .end local v8    # "scene":Ljava/io/File;
    .end local v9    # "sceneScreenshots":[Ljava/io/File;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 150
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 151
    return-object v2

    .line 153
    :cond_3
    new-instance v2, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$3;

    invoke-direct {v2, p0}, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$3;-><init>(Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;)V

    invoke-static {v3, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 159
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 160
    .local v4, "screenshot":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "manual_screenshot.png"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 161
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 163
    .end local v4    # "screenshot":Ljava/io/File;
    :cond_4
    goto :goto_1

    .line 164
    :cond_5
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 141
    .end local v3    # "screenshots":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :cond_6
    :goto_2
    return-object v2
.end method

.method public loadAndShowScreenshot(Ljava/lang/String;Ljava/lang/String;ZLandroid/widget/ImageView;)V
    .locals 9
    .param p1, "projectName"    # Ljava/lang/String;
    .param p2, "sceneName"    # Ljava/lang/String;
    .param p3, "isBackpackScene"    # Z
    .param p4, "imageView"    # Landroid/widget/ImageView;

    .line 105
    const-string v0, ""

    .line 106
    .local v0, "screenShotName":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 107
    move-object v0, p1

    .line 109
    :cond_0
    if-eqz p2, :cond_1

    .line 110
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    :cond_1
    iget-object v1, p0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;->imageViews:Ljava/util/Map;

    invoke-interface {v1, p4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v1, p0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;->imageCache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 115
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 116
    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 119
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p4, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 121
    new-instance v2, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;

    move-object v3, v2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;-><init>(Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;Ljava/lang/String;Ljava/lang/String;ZLandroid/widget/ImageView;)V

    .line 122
    .local v2, "screenshotData":Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;
    iget-object v3, p0, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotLoader;

    invoke-direct {v4, p0, v2}, Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotLoader;-><init>(Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader;Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 124
    .end local v2    # "screenshotData":Lorg/catrobat/catroid/io/ProjectAndSceneScreenshotLoader$ScreenshotData;
    :goto_0
    return-void
.end method
