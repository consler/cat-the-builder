.class public final enum Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;
.super Ljava/lang/Enum;
.source "JsonKeys.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "JsonDataKeys"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

.field public static final enum CACHED_UTC_DATE:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

.field public static final enum CATROBAT_LANGUAGE_VERSION:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

.field public static final enum CLIENT_ID:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

.field public static final enum JOBS_INFO:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

.field public static final enum JOB_ID:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

.field public static final enum JOB_IMAGE_URL:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

.field public static final enum JOB_TITLE:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

.field public static final enum LINES:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

.field public static final enum MSG:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

.field public static final enum PROGRESS:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

.field public static final enum URL:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;


# instance fields
.field private final rawValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 46
    new-instance v0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

    const-string v1, "MSG"

    const/4 v2, 0x0

    const-string v3, "msg"

    invoke-direct {v0, v1, v2, v3}, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;->MSG:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

    .line 47
    new-instance v0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

    const-string v1, "JOB_ID"

    const/4 v3, 0x1

    const-string v4, "jobID"

    invoke-direct {v0, v1, v3, v4}, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;->JOB_ID:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

    .line 48
    new-instance v0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

    const-string v1, "JOB_TITLE"

    const/4 v4, 0x2

    const-string v5, "jobTitle"

    invoke-direct {v0, v1, v4, v5}, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;->JOB_TITLE:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

    .line 49
    new-instance v0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

    const-string v1, "JOB_IMAGE_URL"

    const/4 v5, 0x3

    const-string v6, "jobImageURL"

    invoke-direct {v0, v1, v5, v6}, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;->JOB_IMAGE_URL:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

    .line 50
    new-instance v0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

    const-string v1, "LINES"

    const/4 v6, 0x4

    const-string v7, "lines"

    invoke-direct {v0, v1, v6, v7}, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;->LINES:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

    .line 51
    new-instance v0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

    const-string v1, "PROGRESS"

    const/4 v7, 0x5

    const-string v8, "progress"

    invoke-direct {v0, v1, v7, v8}, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;->PROGRESS:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

    .line 52
    new-instance v0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

    const-string v1, "URL"

    const/4 v8, 0x6

    const-string v9, "url"

    invoke-direct {v0, v1, v8, v9}, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;->URL:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

    .line 53
    new-instance v0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

    const-string v1, "CACHED_UTC_DATE"

    const/4 v9, 0x7

    const-string v10, "cachedUTCDate"

    invoke-direct {v0, v1, v9, v10}, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;->CACHED_UTC_DATE:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

    .line 54
    new-instance v0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

    const-string v1, "JOBS_INFO"

    const/16 v10, 0x8

    const-string v11, "jobsInfo"

    invoke-direct {v0, v1, v10, v11}, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;->JOBS_INFO:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

    .line 55
    new-instance v0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

    const-string v1, "CATROBAT_LANGUAGE_VERSION"

    const/16 v11, 0x9

    const-string v12, "catLangVers"

    invoke-direct {v0, v1, v11, v12}, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;->CATROBAT_LANGUAGE_VERSION:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

    .line 56
    new-instance v0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

    const-string v1, "CLIENT_ID"

    const/16 v12, 0xa

    const-string v13, "clientID"

    invoke-direct {v0, v1, v12, v13}, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;->CLIENT_ID:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

    .line 45
    const/16 v1, 0xb

    new-array v1, v1, [Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

    sget-object v13, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;->MSG:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

    aput-object v13, v1, v2

    sget-object v2, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;->JOB_ID:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;->JOB_TITLE:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

    aput-object v2, v1, v4

    sget-object v2, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;->JOB_IMAGE_URL:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

    aput-object v2, v1, v5

    sget-object v2, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;->LINES:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

    aput-object v2, v1, v6

    sget-object v2, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;->PROGRESS:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

    aput-object v2, v1, v7

    sget-object v2, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;->URL:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

    aput-object v2, v1, v8

    sget-object v2, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;->CACHED_UTC_DATE:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

    aput-object v2, v1, v9

    sget-object v2, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;->JOBS_INFO:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

    aput-object v2, v1, v10

    sget-object v2, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;->CATROBAT_LANGUAGE_VERSION:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

    aput-object v2, v1, v11

    aput-object v0, v1, v12

    sput-object v1, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;->$VALUES:[Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "rawValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 61
    iput-object p3, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;->rawValue:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 45
    const-class v0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;
    .locals 1

    .line 45
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;->$VALUES:[Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonDataKeys;->rawValue:Ljava/lang/String;

    return-object v0
.end method
