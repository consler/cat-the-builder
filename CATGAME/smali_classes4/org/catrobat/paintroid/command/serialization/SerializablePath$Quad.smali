.class public final Lorg/catrobat/paintroid/command/serialization/SerializablePath$Quad;
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
    name = "Quad"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\tR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\t\u00a8\u0006\u0011"
    }
    d2 = {
        "Lorg/catrobat/paintroid/command/serialization/SerializablePath$Quad;",
        "Lorg/catrobat/paintroid/command/serialization/SerializablePath$SerializableAction;",
        "x1",
        "",
        "y1",
        "x2",
        "y2",
        "(FFFF)V",
        "getX1",
        "()F",
        "getX2",
        "getY1",
        "getY2",
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

.field private final y1:F

.field private final y2:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Quad;->x1:F

    iput p2, p0, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Quad;->y1:F

    iput p3, p0, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Quad;->x2:F

    iput p4, p0, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Quad;->y2:F

    return-void
.end method


# virtual methods
.method public final getX1()F
    .locals 1

    .line 83
    iget v0, p0, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Quad;->x1:F

    return v0
.end method

.method public final getX2()F
    .locals 1

    .line 83
    iget v0, p0, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Quad;->x2:F

    return v0
.end method

.method public final getY1()F
    .locals 1

    .line 83
    iget v0, p0, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Quad;->y1:F

    return v0
.end method

.method public final getY2()F
    .locals 1

    .line 83
    iget v0, p0, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Quad;->y2:F

    return v0
.end method

.method public perform(Landroid/graphics/Path;)V
    .locals 4
    .param p1, "path"    # Landroid/graphics/Path;

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget v0, p0, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Quad;->x1:F

    iget v1, p0, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Quad;->y1:F

    iget v2, p0, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Quad;->x2:F

    iget v3, p0, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Quad;->y2:F

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 86
    return-void
.end method
