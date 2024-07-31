.class public final Lcom/google/android/gms/cast/MediaTrack;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/MediaTrack$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/cast/MediaTrack;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUBTYPE_CAPTIONS:I = 0x2

.field public static final SUBTYPE_CHAPTERS:I = 0x4

.field public static final SUBTYPE_DESCRIPTIONS:I = 0x3

.field public static final SUBTYPE_METADATA:I = 0x5

.field public static final SUBTYPE_NONE:I = 0x0

.field public static final SUBTYPE_SUBTITLES:I = 0x1

.field public static final SUBTYPE_UNKNOWN:I = -0x1

.field public static final TYPE_AUDIO:I = 0x2

.field public static final TYPE_TEXT:I = 0x1

.field public static final TYPE_UNKNOWN:I = 0x0

.field public static final TYPE_VIDEO:I = 0x3


# instance fields
.field private id:J

.field private name:Ljava/lang/String;

.field private type:I

.field private zzdd:Ljava/lang/String;

.field private zzde:Ljava/lang/String;

.field private zzft:I

.field private zzj:Ljava/lang/String;

.field private zzk:Ljava/lang/String;

.field private zzp:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 157
    new-instance v0, Lcom/google/android/gms/cast/zzat;

    invoke-direct {v0}, Lcom/google/android/gms/cast/zzat;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/MediaTrack;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(JI)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 50
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/cast/MediaTrack;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 51
    iput-wide p1, p0, Lcom/google/android/gms/cast/MediaTrack;->id:J

    .line 52
    if-lez p3, :cond_0

    const/4 p1, 0x3

    if-gt p3, p1, :cond_0

    .line 54
    iput p3, p0, Lcom/google/android/gms/cast/MediaTrack;->type:I

    .line 55
    return-void

    .line 53
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/16 p2, 0x18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "invalid type "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/android/gms/cast/MediaTrack;->id:J

    .line 3
    iput p3, p0, Lcom/google/android/gms/cast/MediaTrack;->type:I

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/cast/MediaTrack;->zzk:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lcom/google/android/gms/cast/MediaTrack;->zzde:Ljava/lang/String;

    .line 6
    iput-object p6, p0, Lcom/google/android/gms/cast/MediaTrack;->name:Ljava/lang/String;

    .line 7
    iput-object p7, p0, Lcom/google/android/gms/cast/MediaTrack;->zzdd:Ljava/lang/String;

    .line 8
    iput p8, p0, Lcom/google/android/gms/cast/MediaTrack;->zzft:I

    .line 9
    iput-object p9, p0, Lcom/google/android/gms/cast/MediaTrack;->zzj:Ljava/lang/String;

    .line 10
    const/4 p1, 0x0

    if-eqz p9, :cond_0

    .line 11
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    iget-object p3, p0, Lcom/google/android/gms/cast/MediaTrack;->zzj:Ljava/lang/String;

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/cast/MediaTrack;->zzp:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    return-void

    .line 13
    :catch_0
    move-exception p2

    .line 14
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaTrack;->zzp:Lorg/json/JSONObject;

    .line 15
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaTrack;->zzj:Ljava/lang/String;

    .line 16
    return-void

    .line 17
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaTrack;->zzp:Lorg/json/JSONObject;

    .line 18
    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 19
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/cast/MediaTrack;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 20
    nop

    .line 21
    const-string/jumbo v0, "trackId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/cast/MediaTrack;->id:J

    .line 22
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    const-string v1, "TEXT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 24
    iput v4, p0, Lcom/google/android/gms/cast/MediaTrack;->type:I

    goto :goto_0

    .line 25
    :cond_0
    const-string v1, "AUDIO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 26
    iput v3, p0, Lcom/google/android/gms/cast/MediaTrack;->type:I

    goto :goto_0

    .line 27
    :cond_1
    const-string v1, "VIDEO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 28
    iput v2, p0, Lcom/google/android/gms/cast/MediaTrack;->type:I

    .line 30
    :goto_0
    const-string/jumbo v0, "trackContentId"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaTrack;->zzk:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, "trackContentType"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaTrack;->zzde:Ljava/lang/String;

    .line 32
    const-string v0, "name"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaTrack;->name:Ljava/lang/String;

    .line 33
    const-string v0, "language"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaTrack;->zzdd:Ljava/lang/String;

    .line 34
    const-string v0, "subtype"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 35
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    const-string v1, "SUBTITLES"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 37
    iput v4, p0, Lcom/google/android/gms/cast/MediaTrack;->zzft:I

    goto :goto_1

    .line 38
    :cond_2
    const-string v1, "CAPTIONS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 39
    iput v3, p0, Lcom/google/android/gms/cast/MediaTrack;->zzft:I

    goto :goto_1

    .line 40
    :cond_3
    const-string v1, "DESCRIPTIONS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 41
    iput v2, p0, Lcom/google/android/gms/cast/MediaTrack;->zzft:I

    goto :goto_1

    .line 42
    :cond_4
    const-string v1, "CHAPTERS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 43
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/cast/MediaTrack;->zzft:I

    goto :goto_1

    .line 44
    :cond_5
    const-string v1, "METADATA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 45
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/gms/cast/MediaTrack;->zzft:I

    goto :goto_1

    .line 46
    :cond_6
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/cast/MediaTrack;->zzft:I

    goto :goto_1

    .line 47
    :cond_7
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/cast/MediaTrack;->zzft:I

    .line 48
    :goto_1
    const-string v0, "customData"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaTrack;->zzp:Lorg/json/JSONObject;

    .line 49
    return-void

    .line 29
    :cond_8
    new-instance p1, Lorg/json/JSONException;

    const-string v1, "invalid type: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_9
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 111
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 112
    return v0

    .line 113
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/cast/MediaTrack;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 114
    return v2

    .line 115
    :cond_1
    check-cast p1, Lcom/google/android/gms/cast/MediaTrack;

    .line 116
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaTrack;->zzp:Lorg/json/JSONObject;

    if-nez v1, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaTrack;->zzp:Lorg/json/JSONObject;

    if-nez v3, :cond_3

    move v3, v0

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    if-eq v1, v3, :cond_4

    .line 117
    return v2

    .line 118
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaTrack;->zzp:Lorg/json/JSONObject;

    if-eqz v1, :cond_5

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaTrack;->zzp:Lorg/json/JSONObject;

    if-eqz v3, :cond_5

    .line 119
    invoke-static {v1, v3}, Lcom/google/android/gms/common/util/JsonUtils;->areJsonValuesEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 120
    return v2

    .line 121
    :cond_5
    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaTrack;->id:J

    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaTrack;->id:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_6

    iget v1, p0, Lcom/google/android/gms/cast/MediaTrack;->type:I

    iget v3, p1, Lcom/google/android/gms/cast/MediaTrack;->type:I

    if-ne v1, v3, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaTrack;->zzk:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaTrack;->zzk:Ljava/lang/String;

    .line 122
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/cast/zzdc;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaTrack;->zzde:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaTrack;->zzde:Ljava/lang/String;

    .line 123
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/cast/zzdc;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaTrack;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaTrack;->name:Ljava/lang/String;

    .line 124
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/cast/zzdc;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaTrack;->zzdd:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaTrack;->zzdd:Ljava/lang/String;

    .line 125
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/cast/zzdc;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/google/android/gms/cast/MediaTrack;->zzft:I

    iget p1, p1, Lcom/google/android/gms/cast/MediaTrack;->zzft:I

    if-ne v1, p1, :cond_6

    return v0

    :cond_6
    nop

    .line 126
    return v2
.end method

.method public final getContentId()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaTrack;->zzk:Ljava/lang/String;

    return-object v0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaTrack;->zzde:Ljava/lang/String;

    return-object v0
.end method

.method public final getCustomData()Lorg/json/JSONObject;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaTrack;->zzp:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final getId()J
    .locals 2

    .line 56
    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaTrack;->id:J

    return-wide v0
.end method

.method public final getLanguage()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaTrack;->zzdd:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaTrack;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getSubtype()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/google/android/gms/cast/MediaTrack;->zzft:I

    return v0
.end method

.method public final getType()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/google/android/gms/cast/MediaTrack;->type:I

    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 127
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaTrack;->id:J

    .line 128
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/MediaTrack;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaTrack;->zzk:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaTrack;->zzde:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaTrack;->name:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaTrack;->zzdd:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/MediaTrack;->zzft:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaTrack;->zzp:Lorg/json/JSONObject;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 129
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final setContentId(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaTrack;->zzk:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public final setContentType(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaTrack;->zzde:Ljava/lang/String;

    .line 63
    return-void
.end method

.method final setCustomData(Lorg/json/JSONObject;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaTrack;->zzp:Lorg/json/JSONObject;

    .line 79
    return-void
.end method

.method final setLanguage(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaTrack;->zzdd:Ljava/lang/String;

    .line 69
    return-void
.end method

.method final setName(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaTrack;->name:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public final toJson()Lorg/json/JSONObject;
    .locals 6

    .line 80
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 81
    :try_start_0
    const-string/jumbo v1, "trackId"

    iget-wide v2, p0, Lcom/google/android/gms/cast/MediaTrack;->id:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 82
    iget v1, p0, Lcom/google/android/gms/cast/MediaTrack;->type:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string/jumbo v5, "type"

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    :try_start_1
    const-string v1, "VIDEO"

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 85
    :cond_1
    const-string v1, "AUDIO"

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    goto :goto_0

    .line 83
    :cond_2
    const-string v1, "TEXT"

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    nop

    .line 88
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaTrack;->zzk:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 89
    const-string/jumbo v1, "trackContentId"

    iget-object v5, p0, Lcom/google/android/gms/cast/MediaTrack;->zzk:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaTrack;->zzde:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 91
    const-string/jumbo v1, "trackContentType"

    iget-object v5, p0, Lcom/google/android/gms/cast/MediaTrack;->zzde:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaTrack;->name:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 93
    const-string v1, "name"

    iget-object v5, p0, Lcom/google/android/gms/cast/MediaTrack;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaTrack;->zzdd:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 95
    const-string v1, "language"

    iget-object v5, p0, Lcom/google/android/gms/cast/MediaTrack;->zzdd:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    :cond_6
    iget v1, p0, Lcom/google/android/gms/cast/MediaTrack;->zzft:I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, "subtype"

    if-eq v1, v4, :cond_b

    if-eq v1, v3, :cond_a

    if-eq v1, v2, :cond_9

    const/4 v2, 0x4

    if-eq v1, v2, :cond_8

    const/4 v2, 0x5

    if-eq v1, v2, :cond_7

    goto :goto_1

    .line 105
    :cond_7
    :try_start_2
    const-string v1, "METADATA"

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 103
    :cond_8
    const-string v1, "CHAPTERS"

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    goto :goto_1

    .line 101
    :cond_9
    const-string v1, "DESCRIPTIONS"

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    goto :goto_1

    .line 99
    :cond_a
    const-string v1, "CAPTIONS"

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    goto :goto_1

    .line 97
    :cond_b
    const-string v1, "SUBTITLES"

    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    nop

    .line 106
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaTrack;->zzp:Lorg/json/JSONObject;

    if-eqz v1, :cond_c

    .line 107
    const-string v1, "customData"

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaTrack;->zzp:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 108
    :cond_c
    goto :goto_2

    .line 109
    :catch_0
    move-exception v1

    .line 110
    :goto_2
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 130
    iget-object p2, p0, Lcom/google/android/gms/cast/MediaTrack;->zzp:Lorg/json/JSONObject;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/cast/MediaTrack;->zzj:Ljava/lang/String;

    .line 131
    nop

    .line 132
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 133
    const/4 v0, 0x2

    .line 134
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaTrack;->getId()J

    move-result-wide v1

    .line 135
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 136
    const/4 v0, 0x3

    .line 137
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaTrack;->getType()I

    move-result v1

    .line 138
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 139
    const/4 v0, 0x4

    .line 140
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaTrack;->getContentId()Ljava/lang/String;

    move-result-object v1

    .line 141
    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 142
    const/4 v0, 0x5

    .line 143
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaTrack;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 145
    const/4 v0, 0x6

    .line 146
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaTrack;->getName()Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 148
    const/4 v0, 0x7

    .line 149
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaTrack;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 151
    const/16 v0, 0x8

    .line 152
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaTrack;->getSubtype()I

    move-result v1

    .line 153
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 154
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaTrack;->zzj:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 155
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 156
    return-void
.end method

.method final zze(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 71
    if-ltz p1, :cond_2

    const/4 v0, 0x5

    if-gt p1, v0, :cond_2

    .line 73
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/google/android/gms/cast/MediaTrack;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "subtypes are only valid for text tracks"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :cond_1
    :goto_0
    iput p1, p0, Lcom/google/android/gms/cast/MediaTrack;->zzft:I

    .line 76
    return-void

    .line 72
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "invalid subtype "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
