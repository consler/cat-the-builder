.class public final Lorg/catrobat/paintroid/command/serialization/SerializablePath$Line;
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
    name = "Line"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Lorg/catrobat/paintroid/command/serialization/SerializablePath$Line;",
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
        "Paintroid_signedRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final x:F

.field private final y:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Line;->x:F

    iput p2, p0, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Line;->y:F

    return-void
.end method


# virtual methods
.method public final getX()F
    .locals 1

    .line 77
    iget v0, p0, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Line;->x:F

    return v0
.end method

.method public final getY()F
    .locals 1

    .line 77
    iget v0, p0, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Line;->y:F

    return v0
.end method

.method public perform(Landroid/graphics/Path;)V
    .locals 2

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget v0, p0, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Line;->x:F

    iget v1, p0, Lorg/catrobat/paintroid/command/serialization/SerializablePath$Line;->y:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method
