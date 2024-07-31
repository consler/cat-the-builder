.class public final Lcom/google/android/gms/internal/cast/zzcf;
.super Ljava/lang/Object;


# static fields
.field private static final zzbf:Lcom/google/android/gms/internal/cast/zzdo;


# instance fields
.field protected final zzxj:I

.field protected final zzxk:I

.field protected final zzxl:Ljava/lang/String;

.field protected final zzxm:Lorg/json/JSONObject;

.field protected final zzxn:I

.field protected final zzxo:I

.field protected final zzxp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/cast/zzck;",
            ">;"
        }
    .end annotation
.end field

.field protected final zzxq:Lorg/json/JSONObject;

.field protected final zzxr:Ljava/lang/String;

.field protected final zzxs:Ljava/lang/String;

.field protected final zzxt:J

.field protected final zzxu:Ljava/lang/String;

.field protected final zzxv:Lcom/google/android/gms/internal/cast/zzcg;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 68
    new-instance v0, Lcom/google/android/gms/internal/cast/zzdo;

    const-string v1, "GameManagerMessage"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzdo;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzcf;->zzbf:Lcom/google/android/gms/internal/cast/zzdo;

    return-void
.end method

.method private constructor <init>(IILjava/lang/String;Lorg/json/JSONObject;IILjava/util/List;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/google/android/gms/internal/cast/zzcg;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "II",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/cast/zzck;",
            ">;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/cast/zzcg;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/cast/zzcf;->zzxj:I

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/cast/zzcf;->zzxk:I

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/cast/zzcf;->zzxl:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/cast/zzcf;->zzxm:Lorg/json/JSONObject;

    .line 6
    iput p5, p0, Lcom/google/android/gms/internal/cast/zzcf;->zzxn:I

    .line 7
    iput p6, p0, Lcom/google/android/gms/internal/cast/zzcf;->zzxo:I

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/cast/zzcf;->zzxp:Ljava/util/List;

    .line 9
    iput-object p8, p0, Lcom/google/android/gms/internal/cast/zzcf;->zzxq:Lorg/json/JSONObject;

    .line 10
    iput-object p9, p0, Lcom/google/android/gms/internal/cast/zzcf;->zzxr:Ljava/lang/String;

    .line 11
    iput-object p10, p0, Lcom/google/android/gms/internal/cast/zzcf;->zzxs:Ljava/lang/String;

    .line 12
    iput-wide p11, p0, Lcom/google/android/gms/internal/cast/zzcf;->zzxt:J

    .line 13
    iput-object p13, p0, Lcom/google/android/gms/internal/cast/zzcf;->zzxu:Ljava/lang/String;

    .line 14
    iput-object p14, p0, Lcom/google/android/gms/internal/cast/zzcf;->zzxv:Lcom/google/android/gms/internal/cast/zzcg;

    .line 15
    return-void
.end method

.method private static zza(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/cast/zzck;",
            ">;"
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    if-nez p0, :cond_0

    .line 53
    return-object v0

    .line 54
    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 55
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 56
    if-eqz v3, :cond_1

    .line 57
    const/4 v4, 0x0

    .line 58
    :try_start_0
    new-instance v5, Lcom/google/android/gms/internal/cast/zzck;

    invoke-direct {v5, v3}, Lcom/google/android/gms/internal/cast/zzck;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    move-object v4, v5

    goto :goto_1

    .line 60
    :catch_0
    move-exception v3

    .line 61
    sget-object v5, Lcom/google/android/gms/internal/cast/zzcf;->zzbf:Lcom/google/android/gms/internal/cast/zzdo;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 62
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    .line 63
    const-string v7, "Exception when attempting to parse PlayerInfoMessageComponent at index %d"

    invoke-virtual {v5, v3, v7, v6}, Lcom/google/android/gms/internal/cast/zzdo;->zzb(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    :goto_1
    if-eqz v4, :cond_1

    .line 65
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    :cond_2
    return-object v0
.end method

.method protected static zzl(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/cast/zzcf;
    .locals 22

    .line 16
    move-object/from16 v0, p0

    const-string/jumbo v1, "type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 17
    const-string v1, "playerId"

    const-string v2, "gameStatusText"

    const-string v3, "gameData"

    const-string v5, "players"

    const-string v6, "lobbyState"

    const-string v7, "gameplayState"

    const-string v8, "extraMessageData"

    const-string v9, "errorDescription"

    const/4 v14, 0x0

    const-string v10, "statusCode"

    const/16 v18, 0x0

    const/4 v11, 0x1

    if-eq v4, v11, :cond_1

    const/4 v12, 0x2

    if-eq v4, v12, :cond_0

    .line 46
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/cast/zzcf;->zzbf:Lcom/google/android/gms/internal/cast/zzdo;

    const-string v1, "Unrecognized Game Message type %d"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/cast/zzdo;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    goto/16 :goto_2

    .line 18
    :cond_0
    new-instance v19, Lcom/google/android/gms/internal/cast/zzcf;

    .line 19
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    .line 20
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 21
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 22
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    .line 23
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    .line 24
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zzcf;->zza(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v13

    .line 25
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 26
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 27
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    const-wide/16 v16, -0x1

    const/4 v1, 0x0

    const/16 v20, 0x0

    move-object/from16 v3, v19

    move v5, v10

    move-object v6, v9

    move-object v7, v8

    move v8, v11

    move v9, v12

    move-object v10, v13

    move-object v11, v15

    move-object v12, v2

    move-object v13, v0

    move v2, v14

    move-wide/from16 v14, v16

    move-object/from16 v16, v1

    move-object/from16 v17, v20

    :try_start_1
    invoke-direct/range {v3 .. v17}, Lcom/google/android/gms/internal/cast/zzcf;-><init>(IILjava/lang/String;Lorg/json/JSONObject;IILjava/util/List;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/google/android/gms/internal/cast/zzcg;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 28
    return-object v19

    .line 48
    :catch_0
    move-exception v0

    move v1, v2

    goto/16 :goto_1

    .line 29
    :cond_1
    nop

    .line 30
    :try_start_2
    const-string v11, "gameManagerConfig"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 31
    if-eqz v11, :cond_2

    .line 32
    new-instance v12, Lcom/google/android/gms/internal/cast/zzcg;

    invoke-direct {v12, v11}, Lcom/google/android/gms/internal/cast/zzcg;-><init>(Lorg/json/JSONObject;)V

    move-object/from16 v17, v12

    goto :goto_0

    .line 31
    :cond_2
    move-object/from16 v17, v18

    .line 33
    :goto_0
    new-instance v19, Lcom/google/android/gms/internal/cast/zzcf;

    .line 34
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    .line 35
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 36
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 37
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    .line 38
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    .line 39
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/internal/cast/zzcf;->zza(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v13

    .line 40
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 41
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "requestId"

    .line 43
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v20

    const-string v3, "playerToken"

    .line 44
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v3, v19

    move v5, v10

    move-object v6, v9

    move-object v7, v8

    move v8, v11

    move v9, v12

    move-object v10, v13

    move-object v11, v15

    move-object v12, v2

    move-object v13, v1

    move v1, v14

    move-wide/from16 v14, v20

    :try_start_3
    invoke-direct/range {v3 .. v17}, Lcom/google/android/gms/internal/cast/zzcf;-><init>(IILjava/lang/String;Lorg/json/JSONObject;IILjava/util/List;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/google/android/gms/internal/cast/zzcg;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 45
    return-object v19

    .line 48
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move v1, v14

    .line 49
    :goto_1
    sget-object v2, Lcom/google/android/gms/internal/cast/zzcf;->zzbf:Lcom/google/android/gms/internal/cast/zzdo;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Exception while parsing GameManagerMessage from json"

    invoke-virtual {v2, v0, v3, v1}, Lcom/google/android/gms/internal/cast/zzdo;->zzb(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    :goto_2
    return-object v18
.end method
