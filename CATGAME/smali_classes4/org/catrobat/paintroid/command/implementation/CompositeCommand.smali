.class public final Lorg/catrobat/paintroid/command/implementation/CompositeCommand;
.super Ljava/lang/Object;
.source "CompositeCommand.kt"

# interfaces
.implements Lorg/catrobat/paintroid/command/Command;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCompositeCommand.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CompositeCommand.kt\norg/catrobat/paintroid/command/implementation/CompositeCommand\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,48:1\n1819#2,2:49\n1819#2,2:51\n*E\n*S KotlinDebug\n*F\n+ 1 CompositeCommand.kt\norg/catrobat/paintroid/command/implementation/CompositeCommand\n*L\n34#1,2:49\n43#1,2:51\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
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
    .param p1, "command"    # Lorg/catrobat/paintroid/command/Command;

    const-string v0, "command"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/CompositeCommand;->commands:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    return-void
.end method

.method public freeResources()V
    .locals 6

    .line 43
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/CompositeCommand;->commands:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 51
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lorg/catrobat/paintroid/command/Command;

    .local v4, "command":Lorg/catrobat/paintroid/command/Command;
    const/4 v5, 0x0

    .line 44
    .local v5, "$i$a$-forEach-CompositeCommand$freeResources$1":I
    invoke-interface {v4}, Lorg/catrobat/paintroid/command/Command;->freeResources()V

    .line 45
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v4    # "command":Lorg/catrobat/paintroid/command/Command;
    .end local v5    # "$i$a$-forEach-CompositeCommand$freeResources$1":I
    goto :goto_0

    .line 52
    :cond_0
    nop

    .line 46
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
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
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "layerModel"    # Lorg/catrobat/paintroid/contract/LayerContracts$Model;

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layerModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lorg/catrobat/paintroid/command/implementation/CompositeCommand;->commands:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 49
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lorg/catrobat/paintroid/command/Command;

    .local v4, "command":Lorg/catrobat/paintroid/command/Command;
    const/4 v5, 0x0

    .line 35
    .local v5, "$i$a$-forEach-CompositeCommand$run$1":I
    invoke-interface {p2}, Lorg/catrobat/paintroid/contract/LayerContracts$Model;->getCurrentLayer()Lorg/catrobat/paintroid/contract/LayerContracts$Layer;

    move-result-object v6

    if-eqz v6, :cond_0

    .local v6, "layer":Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
    const/4 v7, 0x0

    .line 36
    .local v7, "$i$a$-let-CompositeCommand$run$1$1":I
    invoke-interface {v6}, Lorg/catrobat/paintroid/contract/LayerContracts$Layer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 37
    nop

    .line 35
    .end local v6    # "layer":Lorg/catrobat/paintroid/contract/LayerContracts$Layer;
    .end local v7    # "$i$a$-let-CompositeCommand$run$1$1":I
    nop

    .line 38
    :cond_0
    invoke-interface {v4, p1, p2}, Lorg/catrobat/paintroid/command/Command;->run(Landroid/graphics/Canvas;Lorg/catrobat/paintroid/contract/LayerContracts$Model;)V

    .line 39
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v4    # "command":Lorg/catrobat/paintroid/command/Command;
    .end local v5    # "$i$a$-forEach-CompositeCommand$run$1":I
    goto :goto_0

    .line 50
    :cond_1
    nop

    .line 40
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method
