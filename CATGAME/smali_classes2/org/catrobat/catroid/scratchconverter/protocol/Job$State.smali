.class public final enum Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;
.super Ljava/lang/Enum;
.source "Job.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/scratchconverter/protocol/Job;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

.field public static final enum FAILED:Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

.field public static final enum FINISHED:Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

.field public static final enum READY:Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

.field public static final enum RUNNING:Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

.field public static final enum SCHEDULED:Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

.field public static final enum UNSCHEDULED:Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

.field private static states:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 39
    new-instance v0, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    const-string v1, "UNSCHEDULED"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-direct {v0, v1, v2, v3}, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->UNSCHEDULED:Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    .line 40
    new-instance v0, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    const-string v1, "SCHEDULED"

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-direct {v0, v1, v3, v4}, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->SCHEDULED:Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    .line 41
    new-instance v0, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    const-string v1, "READY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v2}, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->READY:Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    .line 42
    new-instance v0, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    const-string v1, "RUNNING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v3}, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->RUNNING:Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    .line 43
    new-instance v0, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    const-string v1, "FINISHED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v4}, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->FINISHED:Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    .line 44
    new-instance v0, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    const-string v1, "FAILED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v5}, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->FAILED:Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    .line 38
    const/4 v1, 0x6

    new-array v1, v1, [Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    sget-object v8, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->UNSCHEDULED:Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    aput-object v8, v1, v2

    sget-object v8, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->SCHEDULED:Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    aput-object v8, v1, v3

    sget-object v3, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->READY:Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    aput-object v3, v1, v4

    sget-object v3, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->RUNNING:Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    aput-object v3, v1, v5

    sget-object v3, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->FINISHED:Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    aput-object v3, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->$VALUES:[Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    .line 48
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->states:Landroid/util/SparseArray;

    .line 50
    invoke-static {}, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->values()[Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 51
    .local v3, "legEnum":Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;
    sget-object v4, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->states:Landroid/util/SparseArray;

    iget v5, v3, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->state:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    .end local v3    # "legEnum":Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "state"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput p3, p0, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->state:I

    .line 56
    return-void
.end method

.method public static valueOf(I)Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;
    .locals 1
    .param p0, "state"    # I

    .line 59
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 38
    const-class v0, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    return-object v0
.end method

.method public static values()[Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;
    .locals 1

    .line 38
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->$VALUES:[Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    invoke-virtual {v0}, [Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    return-object v0
.end method


# virtual methods
.method public getStateID()I
    .locals 1

    .line 67
    iget v0, p0, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->state:I

    return v0
.end method

.method public isInProgress()Z
    .locals 1

    .line 63
    sget-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->SCHEDULED:Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->READY:Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;->RUNNING:Lorg/catrobat/catroid/scratchconverter/protocol/Job$State;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
