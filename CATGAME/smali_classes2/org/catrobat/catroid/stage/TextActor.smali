.class public Lorg/catrobat/catroid/stage/TextActor;
.super Lcom/badlogic/gdx/scenes/scene2d/Actor;
.source "TextActor.java"


# instance fields
.field private font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

.field private posX:I

.field private posY:I

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "posX"    # I
    .param p3, "posY"    # I

    .line 36
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/catrobat/catroid/stage/TextActor;->text:Ljava/lang/String;

    .line 38
    iput p2, p0, Lorg/catrobat/catroid/stage/TextActor;->posX:I

    .line 39
    iput p3, p0, Lorg/catrobat/catroid/stage/TextActor;->posY:I

    .line 40
    invoke-direct {p0}, Lorg/catrobat/catroid/stage/TextActor;->init()V

    .line 41
    return-void
.end method

.method private init()V
    .locals 3

    .line 49
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/stage/TextActor;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    .line 50
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    .line 51
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 4
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"    # F

    .line 45
    iget-object v0, p0, Lorg/catrobat/catroid/stage/TextActor;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v1, p0, Lorg/catrobat/catroid/stage/TextActor;->text:Ljava/lang/String;

    iget v2, p0, Lorg/catrobat/catroid/stage/TextActor;->posX:I

    int-to-float v2, v2

    iget v3, p0, Lorg/catrobat/catroid/stage/TextActor;->posY:I

    int-to-float v3, v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    .line 46
    return-void
.end method

.method public setPosX(I)V
    .locals 0
    .param p1, "posX"    # I

    .line 54
    iput p1, p0, Lorg/catrobat/catroid/stage/TextActor;->posX:I

    .line 55
    return-void
.end method

.method public setPosY(I)V
    .locals 0
    .param p1, "posY"    # I

    .line 58
    iput p1, p0, Lorg/catrobat/catroid/stage/TextActor;->posY:I

    .line 59
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lorg/catrobat/catroid/stage/TextActor;->text:Ljava/lang/String;

    .line 63
    return-void
.end method
