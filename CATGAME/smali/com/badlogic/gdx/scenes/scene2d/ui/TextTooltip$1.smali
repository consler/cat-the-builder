.class Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$1;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Value;
.source "TextTooltip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$TextTooltipStyle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip;

.field final synthetic val$manager:Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip;Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip;

    .line 53
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip;

    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$1;->val$manager:Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Value;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lcom/badlogic/gdx/scenes/scene2d/Actor;)F
    .locals 2
    .param p1, "context"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 55
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$1;->val$manager:Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TooltipManager;->maxWidth:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextTooltip;->container:Lcom/badlogic/gdx/scenes/scene2d/ui/Container;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Container;->getActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->getGlyphLayout()Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method
