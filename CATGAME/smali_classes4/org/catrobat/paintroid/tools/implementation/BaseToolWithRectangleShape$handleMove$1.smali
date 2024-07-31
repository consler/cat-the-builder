.class final Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$handleMove$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BaseToolWithRectangleShape.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->handleMove(Landroid/graphics/PointF;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Landroid/graphics/PointF;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "<name for destructuring parameter 0>",
        "",
        "Landroid/graphics/PointF;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$handleMove$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 88
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$handleMove$1;->invoke(Ljava/util/List;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 8
    .param p1, "$dstr$coordinate$previousEventCoordinate"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<name for destructuring parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .local v0, "coordinate":Landroid/graphics/PointF;
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 264
    .local v2, "previousEventCoordinate":Landroid/graphics/PointF;
    new-instance v3, Landroid/graphics/PointF;

    .line 265
    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    .line 266
    iget v5, v0, Landroid/graphics/PointF;->y:F

    iget v6, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    .line 264
    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 268
    .local v3, "delta":Landroid/graphics/PointF;
    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$handleMove$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;

    iget-object v4, v4, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->movedDistance:Landroid/graphics/PointF;

    iget-object v5, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$handleMove$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;

    iget-object v5, v5, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->movedDistance:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget v6, v3, Landroid/graphics/PointF;->x:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$handleMove$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;

    iget-object v6, v6, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->movedDistance:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget v7, v3, Landroid/graphics/PointF;->y:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 269
    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 270
    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$handleMove$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;

    invoke-static {v4}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->access$getCurrentAction$p(Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;)Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    sget-object v5, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v4}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;->ordinal()I

    move-result v4

    aget v4, v5, v4

    if-eq v4, v1, :cond_3

    const/4 v1, 0x2

    if-eq v4, v1, :cond_2

    const/4 v1, 0x3

    if-eq v4, v1, :cond_1

    .line 274
    :goto_0
    goto :goto_1

    .line 273
    :cond_1
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$handleMove$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v5, v3, Landroid/graphics/PointF;->y:F

    invoke-static {v1, v4, v5}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->access$rotate(Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;FF)V

    goto :goto_1

    .line 272
    :cond_2
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$handleMove$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v5, v3, Landroid/graphics/PointF;->y:F

    invoke-static {v1, v4, v5}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->access$resize(Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;FF)V

    goto :goto_1

    .line 271
    :cond_3
    iget-object v1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$handleMove$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v5, v3, Landroid/graphics/PointF;->y:F

    invoke-static {v1, v4, v5}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->access$move(Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;FF)V

    .line 275
    .end local v3    # "delta":Landroid/graphics/PointF;
    :goto_1
    nop

    .line 276
    return-void
.end method
