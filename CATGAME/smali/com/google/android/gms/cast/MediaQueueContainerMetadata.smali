.class public Lcom/google/android/gms/cast/MediaQueueContainerMetadata;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/MediaQueueContainerMetadata$Builder;,
        Lcom/google/android/gms/cast/MediaQueueContainerMetadata$MediaQueueContainerType;
    }
.end annotation


# static fields
.field public static final MEDIA_QUEUE_CONTAINER_TYPE_AUDIO_BOOK:I = 0x1

.field public static final MEDIA_QUEUE_CONTAINER_TYPE_GENERIC:I


# instance fields
.field private zzej:I

.field private zzek:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/MediaMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private zzel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/images/WebImage;",
            ">;"
        }
    .end annotation
.end field

.field private zzem:D

.field private zzf:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->clear()V

    .line 3
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/cast/MediaQueueContainerMetadata;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iget v0, p1, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzej:I

    iput v0, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzej:I

    .line 6
    iget-object v0, p1, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzf:Ljava/lang/String;

    .line 7
    iget-object v0, p1, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzek:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzek:Ljava/util/List;

    .line 8
    iget-object v0, p1, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzel:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzel:Ljava/util/List;

    .line 9
    iget-wide v0, p1, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzem:D

    iput-wide v0, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzem:D

    .line 10
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/cast/MediaQueueContainerMetadata;Lcom/google/android/gms/cast/zzan;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;-><init>(Lcom/google/android/gms/cast/MediaQueueContainerMetadata;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/cast/zzan;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;-><init>()V

    return-void
.end method

.method private final clear()V
    .locals 2

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzej:I

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzf:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzek:Ljava/util/List;

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzel:Ljava/util/List;

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzem:D

    .line 16
    return-void
.end method

.method private final setTitle(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzf:Ljava/lang/String;

    .line 22
    return-void
.end method

.method private final zza(D)V
    .locals 0

    .line 30
    iput-wide p1, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzem:D

    .line 31
    return-void
.end method

.method private final zza(I)V
    .locals 0

    .line 18
    iput p1, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzej:I

    .line 19
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/MediaQueueContainerMetadata;D)V
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zza(D)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/MediaQueueContainerMetadata;I)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zza(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/MediaQueueContainerMetadata;Ljava/lang/String;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/MediaQueueContainerMetadata;Ljava/util/List;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zze(Ljava/util/List;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/MediaQueueContainerMetadata;Lorg/json/JSONObject;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzf(Lorg/json/JSONObject;)V

    return-void
.end method

.method private final zze(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/images/WebImage;",
            ">;)V"
        }
    .end annotation

    .line 27
    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzel:Ljava/util/List;

    .line 28
    return-void
.end method

.method private final zzf(Lorg/json/JSONObject;)V
    .locals 6

    .line 32
    invoke-direct {p0}, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->clear()V

    .line 33
    if-nez p1, :cond_0

    .line 34
    return-void

    .line 35
    :cond_0
    const-string v0, "containerType"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x69a7c1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_3

    const v3, 0x316473d9

    if-eq v2, v3, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const-string v2, "GENERIC_CONTAINER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v4

    goto :goto_0

    :cond_3
    const-string v2, "AUDIOBOOK_CONTAINER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v5

    :goto_0
    if-eqz v1, :cond_5

    if-eq v1, v5, :cond_4

    goto :goto_1

    .line 39
    :cond_4
    iput v5, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzej:I

    goto :goto_1

    .line 37
    :cond_5
    iput v4, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzej:I

    .line 38
    nop

    .line 40
    :goto_1
    const/4 v0, 0x0

    const-string/jumbo v1, "title"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzf:Ljava/lang/String;

    .line 41
    const-string v0, "sections"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_7

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzek:Ljava/util/List;

    .line 44
    nop

    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v4, v1, :cond_7

    .line 45
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 46
    if-eqz v1, :cond_6

    .line 47
    new-instance v2, Lcom/google/android/gms/cast/MediaMetadata;

    invoke-direct {v2}, Lcom/google/android/gms/cast/MediaMetadata;-><init>()V

    .line 48
    invoke-virtual {v2, v1}, Lcom/google/android/gms/cast/MediaMetadata;->zzf(Lorg/json/JSONObject;)V

    .line 49
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzek:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 51
    :cond_7
    const-string v0, "containerImages"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_8

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzel:Ljava/util/List;

    .line 54
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/cast/zzdy;->zza(Ljava/util/List;Lorg/json/JSONArray;)V

    .line 55
    :cond_8
    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzem:D

    const-string v2, "containerDuration"

    invoke-virtual {p1, v2, v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzem:D

    .line 56
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 78
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 79
    return v0

    .line 80
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 81
    return v2

    .line 82
    :cond_1
    check-cast p1, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;

    .line 83
    iget v1, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzej:I

    iget v3, p1, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzej:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzf:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzf:Ljava/lang/String;

    .line 84
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzek:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzek:Ljava/util/List;

    .line 85
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzel:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzel:Ljava/util/List;

    .line 86
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzem:D

    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzem:D

    cmpl-double p1, v3, v5

    if-nez p1, :cond_2

    return v0

    :cond_2
    nop

    .line 87
    return v2
.end method

.method public getContainerDuration()D
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzem:D

    return-wide v0
.end method

.method public getContainerImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/images/WebImage;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzel:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContainerType()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzej:I

    return v0
.end method

.method public getSections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/MediaMetadata;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzek:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 88
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzej:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzf:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzek:Ljava/util/List;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzel:Ljava/util/List;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzem:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toJson()Lorg/json/JSONObject;
    .locals 4

    .line 57
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 58
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzej:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "containerType"

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    :try_start_1
    const-string v1, "AUDIOBOOK_CONTAINER"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 59
    :cond_1
    const-string v1, "GENERIC_CONTAINER"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    nop

    .line 62
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzf:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 63
    const-string/jumbo v1, "title"

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzf:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzek:Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzek:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 65
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 66
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzek:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/cast/MediaMetadata;

    .line 67
    invoke-virtual {v3}, Lcom/google/android/gms/cast/MediaMetadata;->toJson()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 68
    goto :goto_1

    .line 69
    :cond_3
    const-string v2, "sections"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzel:Ljava/util/List;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzel:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 71
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzel:Ljava/util/List;

    invoke-static {v1}, Lcom/google/android/gms/internal/cast/zzdy;->zzg(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    .line 72
    if-eqz v1, :cond_5

    .line 73
    const-string v2, "containerImages"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    :cond_5
    const-string v1, "containerDuration"

    iget-wide v2, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzem:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 75
    goto :goto_2

    .line 76
    :catch_0
    move-exception v1

    .line 77
    :goto_2
    return-object v0
.end method

.method final zzd(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/MediaMetadata;",
            ">;)V"
        }
    .end annotation

    .line 24
    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->zzek:Ljava/util/List;

    .line 25
    return-void
.end method
