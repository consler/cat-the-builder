.class public Lcom/badlogic/gdx/graphics/g2d/Animation;
.super Ljava/lang/Object;
.source "Animation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private animationDuration:F

.field private frameDuration:F

.field keyFrames:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private lastFrameNumber:I

.field private lastStateTime:F

.field private playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;


# direct methods
.method public constructor <init>(FLcom/badlogic/gdx/utils/Array;)V
    .locals 5
    .param p1, "frameDuration"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lcom/badlogic/gdx/utils/Array<",
            "+TT;>;)V"
        }
    .end annotation

    .line 58
    .local p0, "this":Lcom/badlogic/gdx/graphics/g2d/Animation;, "Lcom/badlogic/gdx/graphics/g2d/Animation<TT;>;"
    .local p2, "keyFrames":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->NORMAL:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    .line 59
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->frameDuration:F

    .line 60
    iget-object v0, p2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 61
    .local v0, "arrayType":Ljava/lang/Class;
    iget v1, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-static {v0, v1}, Lcom/badlogic/gdx/utils/reflect/ArrayReflection;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 62
    .local v1, "frames":[Ljava/lang/Object;, "[TT;"
    const/4 v2, 0x0

    .local v2, "i":I
    iget v3, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 63
    invoke-virtual {p2, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v2

    .line 62
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_0
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/Animation;->setKeyFrames([Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method public constructor <init>(FLcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;)V
    .locals 0
    .param p1, "frameDuration"    # F
    .param p3, "playMode"    # Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lcom/badlogic/gdx/utils/Array<",
            "+TT;>;",
            "Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;",
            ")V"
        }
    .end annotation

    .line 74
    .local p0, "this":Lcom/badlogic/gdx/graphics/g2d/Animation;, "Lcom/badlogic/gdx/graphics/g2d/Animation<TT;>;"
    .local p2, "keyFrames":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<+TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/Animation;-><init>(FLcom/badlogic/gdx/utils/Array;)V

    .line 75
    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/graphics/g2d/Animation;->setPlayMode(Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;)V

    .line 76
    return-void
.end method

.method public varargs constructor <init>(F[Ljava/lang/Object;)V
    .locals 1
    .param p1, "frameDuration"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F[TT;)V"
        }
    .end annotation

    .line 82
    .local p0, "this":Lcom/badlogic/gdx/graphics/g2d/Animation;, "Lcom/badlogic/gdx/graphics/g2d/Animation<TT;>;"
    .local p2, "keyFrames":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->NORMAL:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    .line 83
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->frameDuration:F

    .line 84
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g2d/Animation;->setKeyFrames([Ljava/lang/Object;)V

    .line 85
    return-void
.end method


# virtual methods
.method public getAnimationDuration()F
    .locals 1

    .line 213
    .local p0, "this":Lcom/badlogic/gdx/graphics/g2d/Animation;, "Lcom/badlogic/gdx/graphics/g2d/Animation<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->animationDuration:F

    return v0
.end method

.method public getFrameDuration()F
    .locals 1

    .line 208
    .local p0, "this":Lcom/badlogic/gdx/graphics/g2d/Animation;, "Lcom/badlogic/gdx/graphics/g2d/Animation<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->frameDuration:F

    return v0
.end method

.method public getKeyFrame(F)Ljava/lang/Object;
    .locals 2
    .param p1, "stateTime"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 122
    .local p0, "this":Lcom/badlogic/gdx/graphics/g2d/Animation;, "Lcom/badlogic/gdx/graphics/g2d/Animation<TT;>;"
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/Animation;->getKeyFrameIndex(F)I

    move-result v0

    .line 123
    .local v0, "frameNumber":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Ljava/lang/Object;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public getKeyFrame(FZ)Ljava/lang/Object;
    .locals 3
    .param p1, "stateTime"    # F
    .param p2, "looping"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FZ)TT;"
        }
    .end annotation

    .line 97
    .local p0, "this":Lcom/badlogic/gdx/graphics/g2d/Animation;, "Lcom/badlogic/gdx/graphics/g2d/Animation<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    .line 98
    .local v0, "oldPlayMode":Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;
    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->NORMAL:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->REVERSED:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    if-ne v1, v2, :cond_2

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->NORMAL:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    if-ne v1, v2, :cond_1

    .line 100
    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->LOOP:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    goto :goto_0

    .line 102
    :cond_1
    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->LOOP_REVERSED:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    goto :goto_0

    .line 103
    :cond_2
    if-nez p2, :cond_4

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->NORMAL:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->REVERSED:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    if-eq v1, v2, :cond_4

    .line 104
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    sget-object v2, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->LOOP_REVERSED:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    if-ne v1, v2, :cond_3

    .line 105
    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->REVERSED:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    goto :goto_0

    .line 107
    :cond_3
    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->LOOP:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    .line 110
    :cond_4
    :goto_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/Animation;->getKeyFrame(F)Ljava/lang/Object;

    move-result-object v1

    .line 111
    .local v1, "frame":Ljava/lang/Object;, "TT;"
    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    .line 112
    return-object v1
.end method

.method public getKeyFrameIndex(F)I
    .locals 5
    .param p1, "stateTime"    # F

    .line 130
    .local p0, "this":Lcom/badlogic/gdx/graphics/g2d/Animation;, "Lcom/badlogic/gdx/graphics/g2d/Animation<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v1

    .line 132
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->frameDuration:F

    div-float v0, p1, v0

    float-to-int v0, v0

    .line 133
    .local v0, "frameNumber":I
    sget-object v3, Lcom/badlogic/gdx/graphics/g2d/Animation$1;->$SwitchMap$com$badlogic$gdx$graphics$g2d$Animation$PlayMode:[I

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 156
    :pswitch_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Ljava/lang/Object;

    array-length v3, v1

    rem-int/2addr v0, v3

    .line 157
    array-length v1, v1

    sub-int/2addr v1, v0

    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    .line 153
    :pswitch_1
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Ljava/lang/Object;

    array-length v3, v3

    sub-int/2addr v3, v0

    sub-int/2addr v3, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 154
    goto :goto_0

    .line 145
    :pswitch_2
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->lastStateTime:F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->frameDuration:F

    div-float/2addr v1, v3

    float-to-int v1, v1

    .line 146
    .local v1, "lastFrameNumber":I
    if-eq v1, v0, :cond_1

    .line 147
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Ljava/lang/Object;

    array-length v3, v3

    sub-int/2addr v3, v2

    invoke-static {v3}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v0

    goto :goto_0

    .line 149
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->lastFrameNumber:I

    .line 151
    goto :goto_0

    .line 141
    .end local v1    # "lastFrameNumber":I
    :pswitch_3
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Ljava/lang/Object;

    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0x2

    rem-int/2addr v0, v2

    .line 142
    array-length v2, v1

    if-lt v0, v2, :cond_2

    array-length v2, v1

    add-int/lit8 v2, v2, -0x2

    array-length v1, v1

    sub-int v1, v0, v1

    sub-int v0, v2, v1

    goto :goto_0

    .line 138
    :pswitch_4
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Ljava/lang/Object;

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 139
    goto :goto_0

    .line 135
    :pswitch_5
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Ljava/lang/Object;

    array-length v1, v1

    sub-int/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 136
    nop

    .line 161
    :cond_2
    :goto_0
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->lastFrameNumber:I

    .line 162
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->lastStateTime:F

    .line 164
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getKeyFrames()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .line 171
    .local p0, "this":Lcom/badlogic/gdx/graphics/g2d/Animation;, "Lcom/badlogic/gdx/graphics/g2d/Animation<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Ljava/lang/Object;

    return-object v0
.end method

.method public getPlayMode()Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;
    .locals 1

    .line 181
    .local p0, "this":Lcom/badlogic/gdx/graphics/g2d/Animation;, "Lcom/badlogic/gdx/graphics/g2d/Animation<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    return-object v0
.end method

.method public isAnimationFinished(F)Z
    .locals 3
    .param p1, "stateTime"    # F

    .line 195
    .local p0, "this":Lcom/badlogic/gdx/graphics/g2d/Animation;, "Lcom/badlogic/gdx/graphics/g2d/Animation<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->frameDuration:F

    div-float v0, p1, v0

    float-to-int v0, v0

    .line 196
    .local v0, "frameNumber":I
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Ljava/lang/Object;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public setFrameDuration(F)V
    .locals 1
    .param p1, "frameDuration"    # F

    .line 202
    .local p0, "this":Lcom/badlogic/gdx/graphics/g2d/Animation;, "Lcom/badlogic/gdx/graphics/g2d/Animation<TT;>;"
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->frameDuration:F

    .line 203
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Ljava/lang/Object;

    array-length v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->animationDuration:F

    .line 204
    return-void
.end method

.method protected varargs setKeyFrames([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 175
    .local p0, "this":Lcom/badlogic/gdx/graphics/g2d/Animation;, "Lcom/badlogic/gdx/graphics/g2d/Animation<TT;>;"
    .local p1, "keyFrames":[Ljava/lang/Object;, "[TT;"
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->keyFrames:[Ljava/lang/Object;

    .line 176
    array-length v0, p1

    int-to-float v0, v0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->frameDuration:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->animationDuration:F

    .line 177
    return-void
.end method

.method public setPlayMode(Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;)V
    .locals 0
    .param p1, "playMode"    # Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    .line 188
    .local p0, "this":Lcom/badlogic/gdx/graphics/g2d/Animation;, "Lcom/badlogic/gdx/graphics/g2d/Animation<TT;>;"
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/Animation;->playMode:Lcom/badlogic/gdx/graphics/g2d/Animation$PlayMode;

    .line 189
    return-void
.end method
