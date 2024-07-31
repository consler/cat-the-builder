.class public Lorg/catrobat/catroid/embroidery/DSTWorkSpace;
.super Ljava/lang/Object;
.source "DSTWorkSpace.java"

# interfaces
.implements Lorg/catrobat/catroid/embroidery/EmbroideryWorkSpace;


# instance fields
.field private currentX:F

.field private currentY:F

.field private lastSprite:Lorg/catrobat/catroid/content/Sprite;

.field private threadColor:Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/catrobat/catroid/embroidery/DSTWorkSpace;->threadColor:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getCurrentX()F
    .locals 1

    .line 46
    iget v0, p0, Lorg/catrobat/catroid/embroidery/DSTWorkSpace;->currentX:F

    return v0
.end method

.method public getCurrentY()F
    .locals 1

    .line 51
    iget v0, p0, Lorg/catrobat/catroid/embroidery/DSTWorkSpace;->currentY:F

    return v0
.end method

.method public getLastSprite()Lorg/catrobat/catroid/content/Sprite;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/catrobat/catroid/embroidery/DSTWorkSpace;->lastSprite:Lorg/catrobat/catroid/content/Sprite;

    return-object v0
.end method

.method public set(FFLorg/catrobat/catroid/content/Sprite;)V
    .locals 0
    .param p1, "currentX"    # F
    .param p2, "currentY"    # F
    .param p3, "currentSprite"    # Lorg/catrobat/catroid/content/Sprite;

    .line 39
    iput p1, p0, Lorg/catrobat/catroid/embroidery/DSTWorkSpace;->currentX:F

    .line 40
    iput p2, p0, Lorg/catrobat/catroid/embroidery/DSTWorkSpace;->currentY:F

    .line 41
    iput-object p3, p0, Lorg/catrobat/catroid/embroidery/DSTWorkSpace;->lastSprite:Lorg/catrobat/catroid/content/Sprite;

    .line 42
    return-void
.end method
