.class final enum Lar/com/hjg/pngj/DeflatedChunksSet$State;
.super Ljava/lang/Enum;
.source "DeflatedChunksSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lar/com/hjg/pngj/DeflatedChunksSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lar/com/hjg/pngj/DeflatedChunksSet$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lar/com/hjg/pngj/DeflatedChunksSet$State;

.field public static final enum ROW_READY:Lar/com/hjg/pngj/DeflatedChunksSet$State;

.field public static final enum TERMINATED:Lar/com/hjg/pngj/DeflatedChunksSet$State;

.field public static final enum WAITING_FOR_INPUT:Lar/com/hjg/pngj/DeflatedChunksSet$State;

.field public static final enum WORK_DONE:Lar/com/hjg/pngj/DeflatedChunksSet$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 49
    new-instance v0, Lar/com/hjg/pngj/DeflatedChunksSet$State;

    const-string v1, "WAITING_FOR_INPUT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lar/com/hjg/pngj/DeflatedChunksSet$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lar/com/hjg/pngj/DeflatedChunksSet$State;->WAITING_FOR_INPUT:Lar/com/hjg/pngj/DeflatedChunksSet$State;

    .line 50
    new-instance v0, Lar/com/hjg/pngj/DeflatedChunksSet$State;

    const-string v1, "ROW_READY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lar/com/hjg/pngj/DeflatedChunksSet$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lar/com/hjg/pngj/DeflatedChunksSet$State;->ROW_READY:Lar/com/hjg/pngj/DeflatedChunksSet$State;

    .line 52
    new-instance v0, Lar/com/hjg/pngj/DeflatedChunksSet$State;

    const-string v1, "WORK_DONE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lar/com/hjg/pngj/DeflatedChunksSet$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lar/com/hjg/pngj/DeflatedChunksSet$State;->WORK_DONE:Lar/com/hjg/pngj/DeflatedChunksSet$State;

    .line 54
    new-instance v0, Lar/com/hjg/pngj/DeflatedChunksSet$State;

    const-string v1, "TERMINATED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lar/com/hjg/pngj/DeflatedChunksSet$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lar/com/hjg/pngj/DeflatedChunksSet$State;->TERMINATED:Lar/com/hjg/pngj/DeflatedChunksSet$State;

    .line 48
    const/4 v1, 0x4

    new-array v1, v1, [Lar/com/hjg/pngj/DeflatedChunksSet$State;

    sget-object v6, Lar/com/hjg/pngj/DeflatedChunksSet$State;->WAITING_FOR_INPUT:Lar/com/hjg/pngj/DeflatedChunksSet$State;

    aput-object v6, v1, v2

    sget-object v2, Lar/com/hjg/pngj/DeflatedChunksSet$State;->ROW_READY:Lar/com/hjg/pngj/DeflatedChunksSet$State;

    aput-object v2, v1, v3

    sget-object v2, Lar/com/hjg/pngj/DeflatedChunksSet$State;->WORK_DONE:Lar/com/hjg/pngj/DeflatedChunksSet$State;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lar/com/hjg/pngj/DeflatedChunksSet$State;->$VALUES:[Lar/com/hjg/pngj/DeflatedChunksSet$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lar/com/hjg/pngj/DeflatedChunksSet$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 48
    const-class v0, Lar/com/hjg/pngj/DeflatedChunksSet$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lar/com/hjg/pngj/DeflatedChunksSet$State;

    return-object v0
.end method

.method public static values()[Lar/com/hjg/pngj/DeflatedChunksSet$State;
    .locals 1

    .line 48
    sget-object v0, Lar/com/hjg/pngj/DeflatedChunksSet$State;->$VALUES:[Lar/com/hjg/pngj/DeflatedChunksSet$State;

    invoke-virtual {v0}, [Lar/com/hjg/pngj/DeflatedChunksSet$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lar/com/hjg/pngj/DeflatedChunksSet$State;

    return-object v0
.end method


# virtual methods
.method public isDone()Z
    .locals 1

    .line 57
    sget-object v0, Lar/com/hjg/pngj/DeflatedChunksSet$State;->WORK_DONE:Lar/com/hjg/pngj/DeflatedChunksSet$State;

    if-eq p0, v0, :cond_1

    sget-object v0, Lar/com/hjg/pngj/DeflatedChunksSet$State;->TERMINATED:Lar/com/hjg/pngj/DeflatedChunksSet$State;

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

.method public isTerminated()Z
    .locals 1

    .line 61
    sget-object v0, Lar/com/hjg/pngj/DeflatedChunksSet$State;->TERMINATED:Lar/com/hjg/pngj/DeflatedChunksSet$State;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
