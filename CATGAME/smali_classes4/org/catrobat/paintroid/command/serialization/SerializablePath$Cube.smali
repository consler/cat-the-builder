.class public final Lorg/catrobat/paintroid/command/serialization/SerializablePath$Cube;
.super Ljava/lang/Object;
.source "SerializablePath.kt"

# interfaces
.implements Lorg/catrobat/paintroid/command/serialization/SerializablePath$SerializableAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/paintroid/command/serialization/SerializablePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Cube"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u000e\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\tJ\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000bR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000bR\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000b\u00a8\u0006\u0015"
    }
    d2 = {
        "Lorg/catrobat/paintroid/command/serialization/SerializablePath$Cube;",
        "Lorg/catrobat/paintroid/command/serialization/SerializablePath$SerializableAction;",
        "x1",
        "",
        "y1",
        "x2",
        "y2",
        "x3",
        "y3",
        "(FFFFFF)V",
        "getX1",
        "()F",
        "getX2",
        "getX3",
        "getY1",
        "getY2",
        "getY3",
        "perform",
        "",
        "path",
        "Landroid/graphics/Path;",
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
.field private final x1:F

.field private final x2:F

.field private final x3:F

.field private final y1:F

.field private final y2:F

.field private final y3:F


# direct methods
.method public constructor <init>(FFFFFF)V
    .locals 0
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "x3"    # F
    .param p6, "y3"    # F

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Cube;->x1:F

    iput p2, p0, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Cube;->y1:F

    iput p3, p0, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Cube;->x2:F

    iput p4, p0, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Cube;->y2:F

    iput p5, p0, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Cube;->x3:F

    iput p6, p0, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Cube;->y3:F

    return-void
.end method


# virtual methods
.method public final getX1()F
    .locals 1

    .line 89
    iget v0, p0, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Cube;->x1:F

    return v0
.end method

.method public final getX2()F
    .locals 1

    .line 89
    iget v0, p0, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Cube;->x2:F

    return v0
.end method

.method public final getX3()F
    .locals 1

    .line 89
    iget v0, p0, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Cube;->x3:F

    return v0
.end method

.method public final getY1()F
    .locals 1

    .line 89
    iget v0, p0, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Cube;->y1:F

    return v0
.end method

.method public final getY2()F
    .locals 1

    .line 89
    iget v0, p0, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Cube;->y2:F

    return v0
.end method

.method public final getY3()F
    .locals 1

    .line 89
    iget v0, p0, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Cube;->y3:F

    return v0
.end method

.method public perform(Landroid/graphics/Path;)V
    .locals 8
    .param p1, "path"    # Landroid/graphics/Path;

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iget v2, p0, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Cube;->x1:F

    iget v3, p0, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Cube;->y1:F

    iget v4, p0, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Cube;->x2:F

    iget v5, p0, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Cube;->y2:F

    iget v6, p0, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Cube;->x3:F

    iget v7, p0, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Cube;->y3:F

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 92
    return-void
.end method
