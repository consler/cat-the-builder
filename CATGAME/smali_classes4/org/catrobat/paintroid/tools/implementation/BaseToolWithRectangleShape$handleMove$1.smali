.class final Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$handleMove$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BaseToolWithRectangleShape.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->handleMove(Landroid/graphics/PointF;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$handleMove$1$WhenMappings;
    }
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
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "<name for destructuring parameter 0>",
        "",
        "Landroid/graphics/PointF;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
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

    .line 295
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$handleMove$1;->invoke(Ljava/util/List;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$dstr$coordinate$previousEventCoordinate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 295
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    .line 296
    new-instance v2, Landroid/graphics/PointF;

    .line 297
    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v4, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    .line 298
    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget v5, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    .line 296
    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 300
    iget-object v3, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$handleMove$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;

    iget-object v3, v3, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->movedDistance:Landroid/graphics/PointF;

    iget-object v4, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$handleMove$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;

    iget-object v4, v4, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->movedDistance:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget v5, v2, Landroid/graphics/PointF;->x:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v4, v5

    iget-object v5, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$handleMove$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;

    iget-object v5, v5, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->movedDistance:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget v6, v2, Landroid/graphics/PointF;->y:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 301
    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v3, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 302
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$handleMove$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;

    invoke-static {p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->access$getCurrentAction$p(Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;)Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$handleMove$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    :goto_0
    if-eq p1, v1, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 305
    :cond_1
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$handleMove$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;

    iget v0, v2, Landroid/graphics/PointF;->x:F

    iget v1, v2, Landroid/graphics/PointF;->y:F

    invoke-static {p1, v0, v1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->access$rotate(Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;FF)V

    goto :goto_1

    .line 304
    :cond_2
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$handleMove$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;

    iget v0, v2, Landroid/graphics/PointF;->x:F

    iget v1, v2, Landroid/graphics/PointF;->y:F

    invoke-static {p1, v0, v1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->access$resize(Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;FF)V

    goto :goto_1

    .line 303
    :cond_3
    iget-object p1, p0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$handleMove$1;->this$0:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;

    iget v0, v2, Landroid/graphics/PointF;->x:F

    iget v1, v2, Landroid/graphics/PointF;->y:F

    invoke-static {p1, v0, v1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;->access$move(Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;FF)V

    :goto_1
    return-void
.end method
