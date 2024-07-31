.class public final enum Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;
.super Ljava/lang/Enum;
.source "JsonKeys.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "JsonJobDataKeys"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;

.field public static final enum DOWNLOAD_URL:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;

.field public static final enum IMAGE_URL:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;

.field public static final enum JOB_ID:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;

.field public static final enum PROGRESS:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;

.field public static final enum STATE:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;

.field public static final enum TITLE:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;


# instance fields
.field private final rawValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 72
    new-instance v0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;

    const-string v1, "STATE"

    const/4 v2, 0x0

    const-string v3, "state"

    invoke-direct {v0, v1, v2, v3}, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;->STATE:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;

    .line 73
    new-instance v0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;

    const-string v1, "JOB_ID"

    const/4 v3, 0x1

    const-string v4, "jobID"

    invoke-direct {v0, v1, v3, v4}, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;->JOB_ID:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;

    .line 74
    new-instance v0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;

    const-string v1, "TITLE"

    const/4 v4, 0x2

    const-string v5, "title"

    invoke-direct {v0, v1, v4, v5}, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;->TITLE:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;

    .line 75
    new-instance v0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;

    const-string v1, "IMAGE_URL"

    const/4 v5, 0x3

    const-string v6, "imageURL"

    invoke-direct {v0, v1, v5, v6}, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;->IMAGE_URL:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;

    .line 76
    new-instance v0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;

    const-string v1, "PROGRESS"

    const/4 v6, 0x4

    const-string v7, "progress"

    invoke-direct {v0, v1, v6, v7}, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;->PROGRESS:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;

    .line 77
    new-instance v0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;

    const-string v1, "DOWNLOAD_URL"

    const/4 v7, 0x5

    const-string v8, "downloadURL"

    invoke-direct {v0, v1, v7, v8}, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;->DOWNLOAD_URL:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;

    .line 71
    const/4 v1, 0x6

    new-array v1, v1, [Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;

    sget-object v8, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;->STATE:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;

    aput-object v8, v1, v2

    sget-object v2, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;->JOB_ID:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;

    aput-object v2, v1, v3

    sget-object v2, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;->TITLE:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;

    aput-object v2, v1, v4

    sget-object v2, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;->IMAGE_URL:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;

    aput-object v2, v1, v5

    sget-object v2, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;->PROGRESS:Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;->$VALUES:[Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;

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

    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 81
    iput-object p3, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;->rawValue:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 71
    const-class v0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;
    .locals 1

    .line 71
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;->$VALUES:[Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/JsonKeys$JsonJobDataKeys;->rawValue:Ljava/lang/String;

    return-object v0
.end method
