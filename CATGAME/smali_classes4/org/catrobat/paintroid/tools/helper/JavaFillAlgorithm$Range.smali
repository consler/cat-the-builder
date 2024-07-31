.class public final Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;
.super Ljava/lang/Object;
.source "JavaFillAlgorithm.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Range"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0016\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B-\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0007H\u00c6\u0003J1\u0010\u0019\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u001a\u001a\u00020\u00072\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001c\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001d\u001a\u00020\u001eH\u00d6\u0001R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u000e\"\u0004\u0008\u0012\u0010\u0010R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u000e\"\u0004\u0008\u0014\u0010\u0010\u00a8\u0006\u001f"
    }
    d2 = {
        "Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;",
        "",
        "line",
        "",
        "start",
        "end",
        "direction",
        "",
        "(IIIZ)V",
        "getDirection",
        "()Z",
        "setDirection",
        "(Z)V",
        "getEnd",
        "()I",
        "setEnd",
        "(I)V",
        "getLine",
        "setLine",
        "getStart",
        "setStart",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "",
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private direction:Z

.field private end:I

.field private line:I

.field private start:I


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;-><init>(IIIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIIZ)V
    .locals 0
    .param p1, "line"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "direction"    # Z

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->line:I

    iput p2, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->start:I

    iput p3, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->end:I

    iput-boolean p4, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->direction:Z

    return-void
.end method

.method public synthetic constructor <init>(IIIZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    .line 174
    move p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 175
    move p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 176
    move p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 177
    move p4, v0

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;-><init>(IIIZ)V

    return-void
.end method

.method public static synthetic copy$default(Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;IIIZILjava/lang/Object;)Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->line:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->start:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->end:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-boolean p4, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->direction:Z

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->copy(IIIZ)Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->line:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->start:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->end:I

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->direction:Z

    return v0
.end method

.method public final copy(IIIZ)Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;
    .locals 1

    new-instance v0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;-><init>(IIIZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;

    iget v0, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->line:I

    iget v1, p1, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->line:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->start:I

    iget v1, p1, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->start:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->end:I

    iget v1, p1, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->end:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->direction:Z

    iget-boolean p1, p1, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->direction:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getDirection()Z
    .locals 1

    .line 177
    iget-boolean v0, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->direction:Z

    return v0
.end method

.method public final getEnd()I
    .locals 1

    .line 176
    iget v0, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->end:I

    return v0
.end method

.method public final getLine()I
    .locals 1

    .line 174
    iget v0, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->line:I

    return v0
.end method

.method public final getStart()I
    .locals 1

    .line 175
    iget v0, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->start:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->line:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->start:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->end:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->direction:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final setDirection(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 177
    iput-boolean p1, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->direction:Z

    return-void
.end method

.method public final setEnd(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 176
    iput p1, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->end:I

    return-void
.end method

.method public final setLine(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 174
    iput p1, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->line:I

    return-void
.end method

.method public final setStart(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 175
    iput p1, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->start:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Range(line="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->line:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->end:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", direction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/catrobat/paintroid/tools/helper/JavaFillAlgorithm$Range;->direction:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
