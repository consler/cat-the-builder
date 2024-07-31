.class public final Lorg/catrobat/catroid/content/actions/SetParticleColorAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "SetParticleColorAction.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/content/actions/SetParticleColorAction$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSetParticleColorAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SetParticleColorAction.kt\norg/catrobat/catroid/content/actions/SetParticleColorAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,61:1\n1#2:62\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0014R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0014"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/SetParticleColorAction;",
        "Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;",
        "()V",
        "color",
        "Lorg/catrobat/catroid/formulaeditor/Formula;",
        "getColor",
        "()Lorg/catrobat/catroid/formulaeditor/Formula;",
        "setColor",
        "(Lorg/catrobat/catroid/formulaeditor/Formula;)V",
        "scope",
        "Lorg/catrobat/catroid/content/Scope;",
        "getScope",
        "()Lorg/catrobat/catroid/content/Scope;",
        "setScope",
        "(Lorg/catrobat/catroid/content/Scope;)V",
        "update",
        "",
        "delta",
        "",
        "Companion",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final Companion:Lorg/catrobat/catroid/content/actions/SetParticleColorAction$Companion;

.field private static final MAX_COLOR:F = 255.0f

.field private static final MAX_SIZE:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private color:Lorg/catrobat/catroid/formulaeditor/Formula;

.field private scope:Lorg/catrobat/catroid/content/Scope;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/catroid/content/actions/SetParticleColorAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/content/actions/SetParticleColorAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/catroid/content/actions/SetParticleColorAction;->Companion:Lorg/catrobat/catroid/content/actions/SetParticleColorAction$Companion;

    .line 56
    const-class v0, Lorg/catrobat/catroid/content/actions/SetParticleColorAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/content/actions/SetParticleColorAction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method public final getColor()Lorg/catrobat/catroid/formulaeditor/Formula;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SetParticleColorAction;->color:Lorg/catrobat/catroid/formulaeditor/Formula;

    return-object v0
.end method

.method public final getScope()Lorg/catrobat/catroid/content/Scope;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SetParticleColorAction;->scope:Lorg/catrobat/catroid/content/Scope;

    return-object v0
.end method

.method public final setColor(Lorg/catrobat/catroid/formulaeditor/Formula;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/formulaeditor/Formula;

    .line 34
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/SetParticleColorAction;->color:Lorg/catrobat/catroid/formulaeditor/Formula;

    return-void
.end method

.method public final setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/content/Scope;

    .line 33
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/SetParticleColorAction;->scope:Lorg/catrobat/catroid/content/Scope;

    return-void
.end method

.method protected update(F)V
    .locals 8
    .param p1, "delta"    # F

    .line 37
    nop

    .line 38
    :try_start_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/SetParticleColorAction;->color:Lorg/catrobat/catroid/formulaeditor/Formula;

    if-eqz v0, :cond_1

    .local v0, "color":Lorg/catrobat/catroid/formulaeditor/Formula;
    const/4 v1, 0x0

    .line 39
    .local v1, "$i$a$-let-SetParticleColorAction$update$1":I
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/SetParticleColorAction;->scope:Lorg/catrobat/catroid/content/Scope;

    invoke-virtual {v0, v2}, Lorg/catrobat/catroid/formulaeditor/Formula;->interpretString(Lorg/catrobat/catroid/content/Scope;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/catrobat/catroid/utils/ShowTextUtils;->calculateColorRGBs(Ljava/lang/String;)[I

    move-result-object v2

    .line 40
    .local v2, "rgb":[I
    const/4 v3, 0x3

    new-array v3, v3, [F

    .line 41
    .local v3, "colors":[F
    const/4 v4, 0x0

    const/4 v5, 0x2

    :goto_0
    if-gt v4, v5, :cond_0

    .line 42
    .local v4, "i":I
    aget v6, v2, v4

    int-to-float v6, v6

    const/high16 v7, 0x437f0000    # 255.0f

    div-float/2addr v6, v7

    aput v6, v3, v4

    .line 41
    nop

    .end local v4    # "i":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 44
    :cond_0
    iget-object v4, p0, Lorg/catrobat/catroid/content/actions/SetParticleColorAction;->scope:Lorg/catrobat/catroid/content/Scope;

    if-eqz v4, :cond_1

    .line 62
    .local v4, "it":Lorg/catrobat/catroid/content/Scope;
    const/4 v5, 0x0

    .line 44
    .local v5, "$i$a$-let-SetParticleColorAction$update$1$1":I
    invoke-virtual {v4}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v6

    iget-object v6, v6, Lorg/catrobat/catroid/content/Sprite;->look:Lorg/catrobat/catroid/content/Look;

    const-string v7, "it.sprite.look"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/catrobat/catroid/content/Look;->getParticleEffect()Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    move-result-object v6

    const-string v7, "it.sprite.look.particleEffect"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v6

    const-string v7, "it.sprite.look.particleEffect.emitters.first()"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getTint()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;

    move-result-object v6

    const-string v7, "it.sprite.look.particleE\u2026ect.emitters.first().tint"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->setColors([F)V
    :try_end_0
    .catch Lorg/catrobat/catroid/formulaeditor/InterpretationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .end local v0    # "color":Lorg/catrobat/catroid/formulaeditor/Formula;
    .end local v1    # "$i$a$-let-SetParticleColorAction$update$1":I
    .end local v2    # "rgb":[I
    .end local v3    # "colors":[F
    .end local v4    # "it":Lorg/catrobat/catroid/content/Scope;
    .end local v5    # "$i$a$-let-SetParticleColorAction$update$1$1":I
    :cond_1
    goto :goto_1

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    nop

    .line 48
    sget-object v1, Lorg/catrobat/catroid/content/actions/SetParticleColorAction;->TAG:Ljava/lang/String;

    .line 49
    nop

    .line 50
    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    .line 47
    const-string v3, "Formula interpretation for this specific Brick failed."

    invoke-static {v1, v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    .end local v0    # "interpretationException":Lorg/catrobat/catroid/formulaeditor/InterpretationException;
    :goto_1
    nop

    .line 53
    return-void
.end method
