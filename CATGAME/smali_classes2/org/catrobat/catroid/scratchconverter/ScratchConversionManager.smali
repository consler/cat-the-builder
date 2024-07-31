.class public Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;
.super Ljava/lang/Object;
.source "ScratchConversionManager.java"

# interfaces
.implements Lorg/catrobat/catroid/scratchconverter/ConversionManager;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private baseInfoViewListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/catrobat/catroid/ui/scratchconverter/BaseInfoViewListener;",
            ">;"
        }
    .end annotation
.end field

.field private final client:Lorg/catrobat/catroid/scratchconverter/Client;

.field private currentActivity:Landroidx/appcompat/app/AppCompatActivity;

.field private downloadCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;",
            ">;"
        }
    .end annotation
.end field

.field private globalDownloadCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;",
            ">;"
        }
    .end annotation
.end field

.field private globalJobViewListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/catrobat/catroid/ui/scratchconverter/JobViewListener;",
            ">;"
        }
    .end annotation
.end field

.field private jobViewListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Set<",
            "Lorg/catrobat/catroid/ui/scratchconverter/JobViewListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private shutdown:Z

.field private final verbose:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    const-class v0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Lorg/catrobat/catroid/scratchconverter/Client;Z)V
    .locals 1
    .param p1, "rootActivity"    # Landroidx/appcompat/app/AppCompatActivity;
    .param p2, "client"    # Lorg/catrobat/catroid/scratchconverter/Client;
    .param p3, "verbose"    # Z

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->currentActivity:Landroidx/appcompat/app/AppCompatActivity;

    .line 84
    iput-object p2, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->client:Lorg/catrobat/catroid/scratchconverter/Client;

    .line 85
    iput-boolean p3, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->verbose:Z

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->downloadCallbacks:Ljava/util/Map;

    .line 87
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->globalDownloadCallbacks:Ljava/util/Set;

    .line 88
    invoke-interface {p2, p0}, Lorg/catrobat/catroid/scratchconverter/Client;->setConvertCallback(Lorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;)V

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->jobViewListeners:Ljava/util/Map;

    .line 90
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->globalJobViewListeners:Ljava/util/Set;

    .line 91
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->baseInfoViewListeners:Ljava/util/Set;

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->shutdown:Z

    .line 93
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 67
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;)Z
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

    .line 67
    iget-boolean v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->shutdown:Z

    return v0
.end method

.method static synthetic access$200(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;)Landroidx/appcompat/app/AppCompatActivity;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

    .line 67
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->currentActivity:Landroidx/appcompat/app/AppCompatActivity;

    return-object v0
.end method

.method static synthetic access$300(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;)V
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

    .line 67
    invoke-direct {p0}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->closeAllActivities()V

    return-void
.end method

.method static synthetic access$400(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

    .line 67
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->baseInfoViewListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$500(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;J)[Lorg/catrobat/catroid/ui/scratchconverter/JobViewListener;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;
    .param p1, "x1"    # J

    .line 67
    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->getJobViewListeners(J)[Lorg/catrobat/catroid/ui/scratchconverter/JobViewListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

    .line 67
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->downloadCallbacks:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->downloadProgram(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;)Lorg/catrobat/catroid/scratchconverter/Client;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

    .line 67
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->client:Lorg/catrobat/catroid/scratchconverter/Client;

    return-object v0
.end method

.method static synthetic access$900(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;

    .line 67
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->globalDownloadCallbacks:Ljava/util/Set;

    return-object v0
.end method

.method private closeAllActivities()V
    .locals 3

    .line 145
    iget-boolean v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->shutdown:Z

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->currentActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lorg/catrobat/catroid/ui/MainMenuActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 147
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 148
    iget-object v1, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->currentActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatActivity;->startActivity(Landroid/content/Intent;)V

    .line 150
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private conversionFinished(Lorg/catrobat/catroid/scratchconverter/protocol/Job;Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;Ljava/lang/String;Ljava/util/Date;)V
    .locals 15
    .param p1, "job"    # Lorg/catrobat/catroid/scratchconverter/protocol/Job;
    .param p2, "downloadCallback"    # Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;
    .param p3, "downloadURL"    # Ljava/lang/String;
    .param p4, "cachedUTCDate"    # Ljava/util/Date;

    .line 347
    move-object v8, p0

    const-string v9, "https://scratch2.catrob.at/"

    .line 348
    .local v9, "baseUrl":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://scratch2.catrob.at/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p3

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 349
    .local v11, "fullDownloadURL":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getJobID()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->readDownloadStateFromDisk(J)Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    move-result-object v12

    .line 351
    .local v12, "localDownloadState":Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;->READY:Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    if-eq v12, v0, :cond_0

    sget-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;->DOWNLOADING:Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    if-eq v12, v0, :cond_0

    .line 352
    return-void

    .line 355
    :cond_0
    move-object v5, v12

    .line 357
    .local v5, "finalLocalDownloadState":Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;
    iget-object v13, v8, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->currentActivity:Landroidx/appcompat/app/AppCompatActivity;

    new-instance v14, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object v6, v11

    move-object/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$8;-><init>(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;Lorg/catrobat/catroid/scratchconverter/protocol/Job;Ljava/lang/String;Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;Ljava/lang/String;Ljava/util/Date;)V

    invoke-virtual {v13, v14}, Landroidx/appcompat/app/AppCompatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 403
    return-void
.end method

.method private downloadProgram(Ljava/lang/String;)V
    .locals 3
    .param p1, "fullDownloadURL"    # Ljava/lang/String;

    .line 406
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start download: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    new-instance v0, Lorg/catrobat/catroid/web/ProjectDownloader;

    sget-object v1, Lorg/catrobat/catroid/web/GlobalProjectDownloadQueue;->INSTANCE:Lorg/catrobat/catroid/web/GlobalProjectDownloadQueue;

    invoke-virtual {v1}, Lorg/catrobat/catroid/web/GlobalProjectDownloadQueue;->getQueue()Lorg/catrobat/catroid/web/GlobalProjectDownloadQueue$ProjectDownloadQueue;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lorg/catrobat/catroid/web/ProjectDownloader;-><init>(Lorg/catrobat/catroid/web/ProjectDownloader$ProjectDownloadQueue;Ljava/lang/String;Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;)V

    iget-object v1, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->currentActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/web/ProjectDownloader;->download(Landroidx/appcompat/app/AppCompatActivity;)V

    .line 408
    return-void
.end method

.method private getJobViewListeners(J)[Lorg/catrobat/catroid/ui/scratchconverter/JobViewListener;
    .locals 3
    .param p1, "jobID"    # J

    .line 251
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 252
    .local v0, "mergedListenersList":Ljava/util/Set;, "Ljava/util/Set<Lorg/catrobat/catroid/ui/scratchconverter/JobViewListener;>;"
    iget-object v1, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->jobViewListeners:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 253
    .local v1, "listenersList":Ljava/util/Set;, "Ljava/util/Set<Lorg/catrobat/catroid/ui/scratchconverter/JobViewListener;>;"
    if-eqz v1, :cond_0

    .line 254
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 256
    :cond_0
    iget-object v2, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->globalJobViewListeners:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 257
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Lorg/catrobat/catroid/ui/scratchconverter/JobViewListener;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/catrobat/catroid/ui/scratchconverter/JobViewListener;

    return-object v2
.end method

.method private readDownloadStateFromDisk(J)Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;
    .locals 7
    .param p1, "jobID"    # J

    .line 496
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->TAG:Ljava/lang/String;

    const-string v1, "Read download-state of program from disk"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->currentActivity:Landroidx/appcompat/app/AppCompatActivity;

    .line 500
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 499
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 502
    .local v0, "sharedPref":Landroid/content/SharedPreferences;
    const-string v1, "scratchconverter.downloadStatePref"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 503
    .local v1, "data":Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 504
    .local v2, "downloadStates":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 505
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 506
    .local v3, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 507
    .local v4, "keysItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 508
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 509
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 510
    .local v6, "value":Ljava/lang/String;
    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    nop

    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    goto :goto_0

    .line 514
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "keysItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 515
    .local v3, "result":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 516
    sget-object v4, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;->NOT_READY:Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    return-object v4

    .line 518
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;->valueOf(I)Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    move-result-object v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 519
    .end local v0    # "sharedPref":Landroid/content/SharedPreferences;
    .end local v1    # "data":Ljava/lang/String;
    .end local v2    # "downloadStates":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 520
    .local v0, "e":Lorg/json/JSONException;
    sget-object v1, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    .end local v0    # "e":Lorg/json/JSONException;
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;->NOT_READY:Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    return-object v0
.end method

.method private updateDownloadStateOnDisk(JLorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;)V
    .locals 9
    .param p1, "jobID"    # J
    .param p3, "downloadState"    # Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    .line 467
    const-string v0, "scratchconverter.downloadStatePref"

    sget-object v1, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->TAG:Ljava/lang/String;

    const-string v2, "Update download-state of program on disk"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :try_start_0
    iget-object v1, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->currentActivity:Landroidx/appcompat/app/AppCompatActivity;

    .line 470
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 469
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 471
    .local v1, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 473
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v3, 0x0

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 474
    .local v3, "data":Ljava/lang/String;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 475
    .local v4, "downloadStates":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 476
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 477
    .local v5, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 478
    .local v6, "keysItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 479
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 480
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 481
    .local v8, "value":Ljava/lang/String;
    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    nop

    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    goto :goto_0

    .line 485
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "keysItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3}, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;->getDownloadStateID()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    sget-object v5, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 488
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 487
    invoke-interface {v2, v0, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 489
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    .end local v1    # "sharedPref":Landroid/content/SharedPreferences;
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "data":Ljava/lang/String;
    .end local v4    # "downloadStates":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1

    .line 490
    :catch_0
    move-exception v0

    .line 491
    .local v0, "e":Lorg/json/JSONException;
    sget-object v1, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method


# virtual methods
.method public addBaseInfoViewListener(Lorg/catrobat/catroid/ui/scratchconverter/BaseInfoViewListener;)V
    .locals 1
    .param p1, "baseInfoViewListener"    # Lorg/catrobat/catroid/ui/scratchconverter/BaseInfoViewListener;

    .line 215
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->baseInfoViewListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 216
    return-void
.end method

.method public addGlobalDownloadCallback(Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;)V
    .locals 1
    .param p1, "callback"    # Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;

    .line 102
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->globalDownloadCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    return-void
.end method

.method public addGlobalJobViewListener(Lorg/catrobat/catroid/ui/scratchconverter/JobViewListener;)V
    .locals 1
    .param p1, "jobViewListener"    # Lorg/catrobat/catroid/ui/scratchconverter/JobViewListener;

    .line 225
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->globalJobViewListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 226
    return-void
.end method

.method public addJobViewListener(JLorg/catrobat/catroid/ui/scratchconverter/JobViewListener;)V
    .locals 3
    .param p1, "jobID"    # J
    .param p3, "jobViewListener"    # Lorg/catrobat/catroid/ui/scratchconverter/JobViewListener;

    .line 235
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->jobViewListeners:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 236
    .local v0, "listeners":Ljava/util/Set;, "Ljava/util/Set<Lorg/catrobat/catroid/ui/scratchconverter/JobViewListener;>;"
    if-nez v0, :cond_0

    .line 237
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move-object v0, v1

    .line 239
    :cond_0
    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 240
    iget-object v1, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->jobViewListeners:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    return-void
.end method

.method public connectAndAuthenticate()V
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->client:Lorg/catrobat/catroid/scratchconverter/Client;

    invoke-interface {v0, p0}, Lorg/catrobat/catroid/scratchconverter/Client;->connectAndAuthenticate(Lorg/catrobat/catroid/scratchconverter/Client$ConnectAuthCallback;)V

    .line 128
    return-void
.end method

.method public convertProgram(JLjava/lang/String;Lcom/google/android/gms/common/images/WebImage;Z)V
    .locals 8
    .param p1, "jobID"    # J
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "image"    # Lcom/google/android/gms/common/images/WebImage;
    .param p5, "force"    # Z

    .line 140
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;->NOT_READY:Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    invoke-direct {p0, p1, p2, v0}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->updateDownloadStateOnDisk(JLorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;)V

    .line 141
    iget-object v1, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->client:Lorg/catrobat/catroid/scratchconverter/Client;

    iget-boolean v6, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->verbose:Z

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    invoke-interface/range {v1 .. v7}, Lorg/catrobat/catroid/scratchconverter/Client;->convertProgram(JLjava/lang/String;Lcom/google/android/gms/common/images/WebImage;ZZ)V

    .line 142
    return-void
.end method

.method public getNumberOfJobsInProgress()I
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->client:Lorg/catrobat/catroid/scratchconverter/Client;

    invoke-interface {v0}, Lorg/catrobat/catroid/scratchconverter/Client;->getNumberOfJobsInProgress()I

    move-result v0

    return v0
.end method

.method public isJobDownloading(J)Z
    .locals 2
    .param p1, "jobID"    # J

    .line 117
    invoke-direct {p0, p1, p2}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->readDownloadStateFromDisk(J)Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    move-result-object v0

    sget-object v1, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;->DOWNLOADING:Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isJobInProgress(J)Z
    .locals 1
    .param p1, "jobID"    # J

    .line 112
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->client:Lorg/catrobat/catroid/scratchconverter/Client;

    invoke-interface {v0, p1, p2}, Lorg/catrobat/catroid/scratchconverter/Client;->isJobInProgress(J)Z

    move-result v0

    return v0
.end method

.method public onAuthenticationFailure(Lorg/catrobat/catroid/scratchconverter/ClientException;)V
    .locals 2
    .param p1, "ex"    # Lorg/catrobat/catroid/scratchconverter/ClientException;

    .line 200
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/catrobat/catroid/scratchconverter/ClientException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->currentActivity:Landroidx/appcompat/app/AppCompatActivity;

    new-instance v1, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$3;

    invoke-direct {v1, p0}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$3;-><init>(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 208
    return-void
.end method

.method public onConnectionClosed(Lorg/catrobat/catroid/scratchconverter/ClientException;)V
    .locals 3
    .param p1, "ex"    # Lorg/catrobat/catroid/scratchconverter/ClientException;

    .line 168
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->TAG:Ljava/lang/String;

    const-string v1, "Connection closed!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {p1}, Lorg/catrobat/catroid/scratchconverter/ClientException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "exceptionMessage":Ljava/lang/String;
    iget-object v1, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->currentActivity:Landroidx/appcompat/app/AppCompatActivity;

    new-instance v2, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$1;

    invoke-direct {v2, p0, v0}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$1;-><init>(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AppCompatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 184
    return-void
.end method

.method public onConnectionFailure(Lorg/catrobat/catroid/scratchconverter/ClientException;)V
    .locals 2
    .param p1, "ex"    # Lorg/catrobat/catroid/scratchconverter/ClientException;

    .line 188
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/catrobat/catroid/scratchconverter/ClientException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->currentActivity:Landroidx/appcompat/app/AppCompatActivity;

    new-instance v1, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$2;

    invoke-direct {v1, p0}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$2;-><init>(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 196
    return-void
.end method

.method public onConversionAlreadyFinished(Lorg/catrobat/catroid/scratchconverter/protocol/Job;Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;Ljava/lang/String;)V
    .locals 3
    .param p1, "job"    # Lorg/catrobat/catroid/scratchconverter/protocol/Job;
    .param p2, "downloadCallback"    # Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;
    .param p3, "downloadURL"    # Ljava/lang/String;

    .line 340
    invoke-virtual {p1}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getJobID()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->readDownloadStateFromDisk(J)Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    move-result-object v0

    sget-object v1, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;->NOT_READY:Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    if-ne v0, v1, :cond_0

    .line 341
    invoke-virtual {p1}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getJobID()J

    move-result-wide v0

    sget-object v2, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;->READY:Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    invoke-direct {p0, v0, v1, v2}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->updateDownloadStateOnDisk(JLorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;)V

    .line 343
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->conversionFinished(Lorg/catrobat/catroid/scratchconverter/protocol/Job;Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;Ljava/lang/String;Ljava/util/Date;)V

    .line 344
    return-void
.end method

.method public onConversionFailure(Lorg/catrobat/catroid/scratchconverter/protocol/Job;Lorg/catrobat/catroid/scratchconverter/ClientException;)V
    .locals 3
    .param p1, "job"    # Lorg/catrobat/catroid/scratchconverter/protocol/Job;
    .param p2, "ex"    # Lorg/catrobat/catroid/scratchconverter/ClientException;

    .line 412
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Conversion failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/catrobat/catroid/scratchconverter/ClientException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->currentActivity:Landroidx/appcompat/app/AppCompatActivity;

    new-instance v1, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$9;

    invoke-direct {v1, p0, p1}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$9;-><init>(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;Lorg/catrobat/catroid/scratchconverter/protocol/Job;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 428
    return-void
.end method

.method public onConversionFinished(Lorg/catrobat/catroid/scratchconverter/protocol/Job;Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;Ljava/lang/String;Ljava/util/Date;)V
    .locals 3
    .param p1, "job"    # Lorg/catrobat/catroid/scratchconverter/protocol/Job;
    .param p2, "downloadCallback"    # Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;
    .param p3, "downloadURL"    # Ljava/lang/String;
    .param p4, "cachedUTCDate"    # Ljava/util/Date;

    .line 333
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->TAG:Ljava/lang/String;

    const-string v1, "Conversion finished!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-virtual {p1}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getJobID()J

    move-result-wide v0

    sget-object v2, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;->READY:Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    invoke-direct {p0, v0, v1, v2}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->updateDownloadStateOnDisk(JLorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;)V

    .line 335
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->conversionFinished(Lorg/catrobat/catroid/scratchconverter/protocol/Job;Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;Ljava/lang/String;Ljava/util/Date;)V

    .line 336
    return-void
.end method

.method public onConversionReady(Lorg/catrobat/catroid/scratchconverter/protocol/Job;)V
    .locals 2
    .param p1, "job"    # Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    .line 304
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->TAG:Ljava/lang/String;

    const-string v1, "Conversion ready!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->currentActivity:Landroidx/appcompat/app/AppCompatActivity;

    new-instance v1, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$6;

    invoke-direct {v1, p0, p1}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$6;-><init>(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;Lorg/catrobat/catroid/scratchconverter/protocol/Job;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 313
    return-void
.end method

.method public onConversionStart(Lorg/catrobat/catroid/scratchconverter/protocol/Job;)V
    .locals 2
    .param p1, "job"    # Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    .line 318
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->TAG:Ljava/lang/String;

    const-string v1, "Conversion started!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->currentActivity:Landroidx/appcompat/app/AppCompatActivity;

    new-instance v1, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$7;

    invoke-direct {v1, p0, p1}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$7;-><init>(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;Lorg/catrobat/catroid/scratchconverter/protocol/Job;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 328
    return-void
.end method

.method public onDownloadFinished(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "catrobatProgramName"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .line 569
    invoke-static {p2}, Lorg/catrobat/catroid/utils/Utils;->extractScratchJobIDFromURL(Ljava/lang/String;)J

    move-result-wide v0

    .line 570
    .local v0, "jobID":J
    sget-object v2, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;->DOWNLOADED:Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    invoke-direct {p0, v0, v1, v2}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->updateDownloadStateOnDisk(JLorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;)V

    .line 573
    iget-object v2, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->currentActivity:Landroidx/appcompat/app/AppCompatActivity;

    new-instance v3, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$15;

    invoke-direct {v3, p0, p2, p1}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$15;-><init>(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AppCompatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 586
    return-void
.end method

.method public onDownloadProgress(ILjava/lang/String;)V
    .locals 2
    .param p1, "progress"    # I
    .param p2, "url"    # Ljava/lang/String;

    .line 552
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->currentActivity:Landroidx/appcompat/app/AppCompatActivity;

    new-instance v1, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$14;

    invoke-direct {v1, p0, p2, p1}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$14;-><init>(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 565
    return-void
.end method

.method public onDownloadStarted(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .line 530
    invoke-static {p1}, Lorg/catrobat/catroid/utils/Utils;->extractScratchJobIDFromURL(Ljava/lang/String;)J

    move-result-wide v0

    .line 531
    .local v0, "jobID":J
    sget-object v2, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;->DOWNLOADING:Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    invoke-direct {p0, v0, v1, v2}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->updateDownloadStateOnDisk(JLorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;)V

    .line 534
    iget-object v2, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->currentActivity:Landroidx/appcompat/app/AppCompatActivity;

    new-instance v3, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$13;

    invoke-direct {v3, p0, p1}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$13;-><init>(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AppCompatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 547
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 432
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->currentActivity:Landroidx/appcompat/app/AppCompatActivity;

    new-instance v1, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$10;

    invoke-direct {v1, p0, p1}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$10;-><init>(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 440
    return-void
.end method

.method public onInfo(D[Lorg/catrobat/catroid/scratchconverter/protocol/Job;)V
    .locals 5
    .param p1, "supportedCatrobatLanguageVersion"    # D
    .param p3, "jobs"    # [Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    .line 265
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p3, v1

    .line 266
    .local v2, "job":Lorg/catrobat/catroid/scratchconverter/protocol/Job;
    invoke-virtual {v2}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->getJobID()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->readDownloadStateFromDisk(J)Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/catrobat/catroid/scratchconverter/protocol/Job;->setDownloadState(Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;)V

    .line 265
    .end local v2    # "job":Lorg/catrobat/catroid/scratchconverter/protocol/Job;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 269
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->currentActivity:Landroidx/appcompat/app/AppCompatActivity;

    new-instance v1, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$4;-><init>(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;D[Lorg/catrobat/catroid/scratchconverter/protocol/Job;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 288
    return-void
.end method

.method public onJobOutput(Lorg/catrobat/catroid/scratchconverter/protocol/Job;[Ljava/lang/String;)V
    .locals 2
    .param p1, "job"    # Lorg/catrobat/catroid/scratchconverter/protocol/Job;
    .param p2, "lines"    # [Ljava/lang/String;

    .line 444
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->currentActivity:Landroidx/appcompat/app/AppCompatActivity;

    new-instance v1, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$11;

    invoke-direct {v1, p0, p1, p2}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$11;-><init>(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;Lorg/catrobat/catroid/scratchconverter/protocol/Job;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 452
    return-void
.end method

.method public onJobProgress(Lorg/catrobat/catroid/scratchconverter/protocol/Job;S)V
    .locals 2
    .param p1, "job"    # Lorg/catrobat/catroid/scratchconverter/protocol/Job;
    .param p2, "progress"    # S

    .line 456
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->currentActivity:Landroidx/appcompat/app/AppCompatActivity;

    new-instance v1, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$12;

    invoke-direct {v1, p0, p1, p2}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$12;-><init>(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;Lorg/catrobat/catroid/scratchconverter/protocol/Job;S)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 464
    return-void
.end method

.method public onJobScheduled(Lorg/catrobat/catroid/scratchconverter/protocol/Job;)V
    .locals 2
    .param p1, "job"    # Lorg/catrobat/catroid/scratchconverter/protocol/Job;

    .line 292
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->currentActivity:Landroidx/appcompat/app/AppCompatActivity;

    new-instance v1, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$5;

    invoke-direct {v1, p0, p1}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager$5;-><init>(Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;Lorg/catrobat/catroid/scratchconverter/protocol/Job;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 300
    return-void
.end method

.method public onSuccess(J)V
    .locals 5
    .param p1, "clientID"    # J

    .line 157
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->currentActivity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 158
    .local v0, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 159
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "scratchconverter.clientID"

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 160
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 161
    sget-object v2, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connection established (clientID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v2, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->client:Lorg/catrobat/catroid/scratchconverter/Client;

    invoke-interface {v2}, Lorg/catrobat/catroid/scratchconverter/Client;->isAuthenticated()Z

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 163
    iget-object v2, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->client:Lorg/catrobat/catroid/scratchconverter/Client;

    invoke-interface {v2}, Lorg/catrobat/catroid/scratchconverter/Client;->retrieveInfo()V

    .line 164
    return-void
.end method

.method public onUserCanceledDownload(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .line 590
    invoke-static {p1}, Lorg/catrobat/catroid/utils/Utils;->extractScratchJobIDFromURL(Ljava/lang/String;)J

    move-result-wide v0

    .line 591
    .local v0, "jobID":J
    sget-object v2, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;->CANCELED:Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    invoke-direct {p0, v0, v1, v2}, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->updateDownloadStateOnDisk(JLorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;)V

    .line 593
    iget-object v2, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->downloadCallbacks:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;

    .line 594
    .local v2, "callback":Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;
    if-eqz v2, :cond_0

    .line 595
    invoke-interface {v2, p1}, Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;->onUserCanceledDownload(Ljava/lang/String;)V

    .line 598
    :cond_0
    iget-object v3, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->globalDownloadCallbacks:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;

    .line 599
    .local v4, "cb":Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;
    invoke-interface {v4, p1}, Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;->onUserCanceledDownload(Ljava/lang/String;)V

    .line 600
    .end local v4    # "cb":Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;
    goto :goto_0

    .line 601
    :cond_1
    return-void
.end method

.method public removeBaseInfoViewListener(Lorg/catrobat/catroid/ui/scratchconverter/BaseInfoViewListener;)Z
    .locals 1
    .param p1, "baseInfoViewListener"    # Lorg/catrobat/catroid/ui/scratchconverter/BaseInfoViewListener;

    .line 220
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->baseInfoViewListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeGlobalDownloadCallback(Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;)Z
    .locals 1
    .param p1, "callback"    # Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;

    .line 107
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->globalDownloadCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeGlobalJobViewListener(Lorg/catrobat/catroid/ui/scratchconverter/JobViewListener;)Z
    .locals 1
    .param p1, "jobViewListener"    # Lorg/catrobat/catroid/ui/scratchconverter/JobViewListener;

    .line 230
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->globalJobViewListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeJobViewListener(JLorg/catrobat/catroid/ui/scratchconverter/JobViewListener;)Z
    .locals 2
    .param p1, "jobID"    # J
    .param p3, "jobViewListener"    # Lorg/catrobat/catroid/ui/scratchconverter/JobViewListener;

    .line 245
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->jobViewListeners:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 246
    .local v0, "listeners":Ljava/util/Set;, "Ljava/util/Set<Lorg/catrobat/catroid/ui/scratchconverter/JobViewListener;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setCurrentActivity(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0
    .param p1, "activity"    # Landroidx/appcompat/app/AppCompatActivity;

    .line 97
    iput-object p1, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->currentActivity:Landroidx/appcompat/app/AppCompatActivity;

    .line 98
    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->shutdown:Z

    .line 133
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->client:Lorg/catrobat/catroid/scratchconverter/Client;

    invoke-interface {v0}, Lorg/catrobat/catroid/scratchconverter/Client;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/ScratchConversionManager;->client:Lorg/catrobat/catroid/scratchconverter/Client;

    invoke-interface {v0}, Lorg/catrobat/catroid/scratchconverter/Client;->close()V

    .line 136
    :cond_0
    return-void
.end method
