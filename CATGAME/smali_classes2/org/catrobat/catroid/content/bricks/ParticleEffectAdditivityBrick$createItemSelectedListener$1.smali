.class public final Lorg/catrobat/catroid/content/bricks/ParticleEffectAdditivityBrick$createItemSelectedListener$1;
.super Ljava/lang/Object;
.source "ParticleEffectAdditivityBrick.kt"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/content/bricks/ParticleEffectAdditivityBrick;->createItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J.\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0016\u0010\u000c\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0005H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "org/catrobat/catroid/content/bricks/ParticleEffectAdditivityBrick$createItemSelectedListener$1",
        "Landroid/widget/AdapterView$OnItemSelectedListener;",
        "onItemSelected",
        "",
        "adapterView",
        "Landroid/widget/AdapterView;",
        "view",
        "Landroid/view/View;",
        "position",
        "",
        "l",
        "",
        "onNothingSelected",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/content/bricks/ParticleEffectAdditivityBrick;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/content/bricks/ParticleEffectAdditivityBrick;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/content/bricks/ParticleEffectAdditivityBrick;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/ParticleEffectAdditivityBrick$createItemSelectedListener$1;->this$0:Lorg/catrobat/catroid/content/bricks/ParticleEffectAdditivityBrick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p1, "adapterView"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/ParticleEffectAdditivityBrick$createItemSelectedListener$1;->this$0:Lorg/catrobat/catroid/content/bricks/ParticleEffectAdditivityBrick;

    invoke-static {v0, p3}, Lorg/catrobat/catroid/content/bricks/ParticleEffectAdditivityBrick;->access$setFadeSpinnerSelectionId$p(Lorg/catrobat/catroid/content/bricks/ParticleEffectAdditivityBrick;I)V

    .line 84
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .param p1, "adapterView"    # Landroid/widget/AdapterView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 88
    return-void
.end method
