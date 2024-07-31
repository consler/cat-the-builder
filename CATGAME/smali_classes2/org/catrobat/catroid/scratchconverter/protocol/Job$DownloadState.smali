.class public final enum Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;
.super Ljava/lang/Enum;
.source "Job.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/scratchconverter/protocol/Job;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DownloadState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

.field public static final enum CANCELED:Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

.field public static final enum DOWNLOADED:Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

.field public static final enum DOWNLOADING:Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

.field public static final enum NOT_READY:Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

.field public static final enum READY:Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

.field private static downloadStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private downloadState:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 72
    new-instance v0, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    const-string v1, "NOT_READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;->NOT_READY:Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    .line 73
    new-instance v0, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    const-string v1, "READY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;->READY:Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    .line 74
    new-instance v0, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    const-string v1, "DOWNLOADING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;->DOWNLOADING:Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    .line 75
    new-instance v0, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    const-string v1, "DOWNLOADED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;->DOWNLOADED:Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    .line 76
    new-instance v0, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    const-string v1, "CANCELED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;->CANCELED:Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    .line 71
    const/4 v1, 0x5

    new-array v1, v1, [Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    sget-object v7, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;->NOT_READY:Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    aput-object v7, v1, v2

    sget-object v7, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;->READY:Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    aput-object v7, v1, v3

    sget-object v3, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;->DOWNLOADING:Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    aput-object v3, v1, v4

    sget-object v3, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;->DOWNLOADED:Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    aput-object v3, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;->$VALUES:[Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    .line 80
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;->downloadStates:Landroid/util/SparseArray;

    .line 82
    invoke-static {}, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;->values()[Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 83
    .local v3, "legEnum":Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;
    sget-object v4, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;->downloadStates:Landroid/util/SparseArray;

    iget v5, v3, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;->downloadState:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 82
    .end local v3    # "legEnum":Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "downloadState"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 87
    iput p3, p0, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;->downloadState:I

    .line 88
    return-void
.end method

.method public static valueOf(I)Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;
    .locals 1
    .param p0, "downloadState"    # I

    .line 91
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;->downloadStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 71
    const-class v0, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;
    .locals 1

    .line 71
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;->$VALUES:[Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;

    return-object v0
.end method


# virtual methods
.method public getDownloadStateID()I
    .locals 1

    .line 95
    iget v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/Job$DownloadState;->downloadState:I

    return v0
.end method
