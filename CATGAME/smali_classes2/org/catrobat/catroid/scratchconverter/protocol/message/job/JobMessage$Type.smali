.class public final enum Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;
.super Ljava/lang/Enum;
.source "JobMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;

.field public static final enum JOB_ALREADY_RUNNING:Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;

.field public static final enum JOB_FAILED:Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;

.field public static final enum JOB_FINISHED:Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;

.field public static final enum JOB_OUTPUT:Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;

.field public static final enum JOB_PROGRESS:Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;

.field public static final enum JOB_READY:Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;

.field public static final enum JOB_RUNNING:Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;

.field private static types:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private typeID:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 55
    new-instance v0, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;

    const-string v1, "JOB_FAILED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;->JOB_FAILED:Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;

    .line 56
    new-instance v0, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;

    const-string v1, "JOB_RUNNING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;->JOB_RUNNING:Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;

    .line 57
    new-instance v0, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;

    const-string v1, "JOB_ALREADY_RUNNING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;->JOB_ALREADY_RUNNING:Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;

    .line 58
    new-instance v0, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;

    const-string v1, "JOB_READY"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;->JOB_READY:Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;

    .line 59
    new-instance v0, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;

    const-string v1, "JOB_OUTPUT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;->JOB_OUTPUT:Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;

    .line 60
    new-instance v0, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;

    const-string v1, "JOB_PROGRESS"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;->JOB_PROGRESS:Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;

    .line 61
    new-instance v0, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;

    const-string v1, "JOB_FINISHED"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;->JOB_FINISHED:Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;

    .line 54
    const/4 v1, 0x7

    new-array v1, v1, [Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;

    sget-object v9, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;->JOB_FAILED:Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;

    aput-object v9, v1, v2

    sget-object v9, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;->JOB_RUNNING:Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;

    aput-object v9, v1, v3

    sget-object v3, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;->JOB_ALREADY_RUNNING:Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;

    aput-object v3, v1, v4

    sget-object v3, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;->JOB_READY:Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;

    aput-object v3, v1, v5

    sget-object v3, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;->JOB_OUTPUT:Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;

    aput-object v3, v1, v6

    sget-object v3, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;->JOB_PROGRESS:Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;

    aput-object v3, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;->$VALUES:[Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;

    .line 65
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;->types:Landroid/util/SparseArray;

    .line 67
    invoke-static {}, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;->values()[Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 68
    .local v3, "legEnum":Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;
    sget-object v4, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;->types:Landroid/util/SparseArray;

    iget v5, v3, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;->typeID:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    .end local v3    # "legEnum":Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "typeID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 72
    iput p3, p0, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;->typeID:I

    .line 73
    return-void
.end method

.method public static valueOf(I)Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;
    .locals 1
    .param p0, "typeID"    # I

    .line 76
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;->types:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 54
    const-class v0, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;
    .locals 1

    .line 54
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;->$VALUES:[Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;

    return-object v0
.end method


# virtual methods
.method public getTypeID()I
    .locals 1

    .line 80
    iget v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/message/job/JobMessage$Type;->typeID:I

    return v0
.end method
