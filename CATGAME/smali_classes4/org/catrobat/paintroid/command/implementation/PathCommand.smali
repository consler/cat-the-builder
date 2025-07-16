.class public final Lorg/catrobat/paintroid/command/implementation/PathCommand;
.super Ljava/lang/Object;
.source "PathCommand.kt"

# interfaces
.implements Lorg/catrobat/paintroid/command/Command;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0018\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0005@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0013"
    }
    d2 = {
        "Lorg/catrobat/paintroid/command/implementation/PathCommand;",
        "Lorg/catrobat/paintroid/command/Command;",
        "paint",
        "Landroid/graphics/Paint;",
        "path",
        "Landroid/graphics/Path;",
        "(Landroid/graphics/Paint;Landroid/graphics/Path;)V",
        "getPaint",
        "()Landroid/graphics/Paint;",
        "<set-?>",
        "getPath",
        "()Landroid/graphics/Path;",
        "freeResources",
        "",
        "run",
        "canvas",
        "Landroid/graphics/Canvas;",
        "layerModel",
        "Lorg/catrobat/paintroid/contract/LayerContracts$Model;",
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
.field private final paint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/graphics/Paint;Landroid/graphics/Path;)V
    .locals 1

    const-string v0, "paint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/command/implementation/PathCommand;->paint:Landroid/graphics/Paint;

    .line 30
    iput-object p2, p0, Lorg/catrobat/paintroid/command/implementation/PathCommand;->path:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public freeResources()V
    .locals 0

    return-void
.end method

.method public final getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/PathCommand;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final getPath()Landroid/graphics/Path;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/PathCommand;->path:Landroid/graphics/Path;

    return-object v0
.end method

.method public run(Landroid/graphics/Canvas;Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V
    .locals 1

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layerModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object p2, p0, Lorg/catrobat/paintroid/command/implementation/PathCommand;->path:Landroid/graphics/Path;

    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/PathCommand;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method
