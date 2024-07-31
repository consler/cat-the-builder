.class public final Lorg/catrobat/paintroid/command/serialization/SerializablePath$Move;
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
    name = "Move"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Lorg/catrobat/paintroid/command/serialization/SerializablePath$Move;",
        "Lorg/catrobat/paintroid/command/serialization/SerializablePath$SerializableAction;",
        "x",
        "",
        "y",
        "(FF)V",
        "getX",
        "()F",
        "getY",
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
.field private final x:F

.field private final y:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Move;->x:F

    iput p2, p0, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Move;->y:F

    return-void
.end method


# virtual methods
.method public final getX()F
    .locals 1

    .line 71
    iget v0, p0, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Move;->x:F

    return v0
.end method

.method public final getY()F
    .locals 1

    .line 71
    iget v0, p0, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Move;->y:F

    return v0
.end method

.method public perform(Landroid/graphics/Path;)V
    .locals 2
    .param p1, "path"    # Landroid/graphics/Path;

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget v0, p0, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Move;->x:F

    iget v1, p0, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Move;->y:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 74
    return-void
.end method
