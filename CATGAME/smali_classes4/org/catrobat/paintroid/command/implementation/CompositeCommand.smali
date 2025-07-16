.class public final Lorg/catrobat/paintroid/command/implementation/CompositeCommand;
.super Ljava/lang/Object;
.source "CompositeCommand.kt"

# interfaces
.implements Lorg/catrobat/paintroid/command/Command;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCompositeCommand.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CompositeCommand.kt\norg/catrobat/paintroid/command/implementation/CompositeCommand\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,48:1\n1849#2,2:49\n1849#2,2:51\n*S KotlinDebug\n*F\n+ 1 CompositeCommand.kt\norg/catrobat/paintroid/command/implementation/CompositeCommand\n*L\n34#1:49,2\n43#1:51,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0001J\u0008\u0010\u000b\u001a\u00020\tH\u0016J\u0018\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R*\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00042\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0011"
    }
    d2 = {
        "Lorg/catrobat/paintroid/command/implementation/CompositeCommand;",
        "Lorg/catrobat/paintroid/command/Command;",
        "()V",
        "<set-?>",
        "",
        "commands",
        "getCommands",
        "()Ljava/util/List;",
        "addCommand",
        "",
        "command",
        "freeResources",
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
.field private commands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/paintroid/command/Command;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/catrobat/paintroid/command/implementation/CompositeCommand;->commands:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addCommand(Lorg/catrobat/paintroid/command/Command;)V
    .locals 1

    const-string v0, "command"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/CompositeCommand;->commands:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public freeResources()V
    .locals 2

    .line 43
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/CompositeCommand;->commands:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 51
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/paintroid/command/Command;

    .line 44
    invoke-interface {v1}, Lorg/catrobat/paintroid/command/Command;->freeResources()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getCommands()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/catrobat/paintroid/command/Command;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/CompositeCommand;->commands:Ljava/util/List;

    return-object v0
.end method

.method public run(Landroid/graphics/Canvas;Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V
    .locals 3

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layerModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/CompositeCommand;->commands:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 49
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/paintroid/command/Command;

    .line 35
    invoke-interface {p2}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getCurrentLayer()Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 36
    :cond_0
    invoke-interface {v2}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 38
    :goto_1
    invoke-interface {v1, p1, p2}, Lorg/catrobat/paintroid/command/Command;->run(Landroid/graphics/Canvas;Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V

    goto :goto_0

    :cond_1
    return-void
.end method
