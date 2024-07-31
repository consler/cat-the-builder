.class public Lorg/catrobat/catroid/content/GroupItemSprite;
.super Lorg/catrobat/catroid/content/Sprite;
.source "GroupItemSprite.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient collapsed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lorg/catrobat/catroid/content/Sprite;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/GroupItemSprite;->collapsed:Z

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0, p1}, Lorg/catrobat/catroid/content/Sprite;-><init>(Ljava/lang/String;)V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/content/GroupItemSprite;->collapsed:Z

    .line 37
    return-void
.end method


# virtual methods
.method public isCollapsed()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lorg/catrobat/catroid/content/GroupItemSprite;->collapsed:Z

    return v0
.end method

.method public setCollapsed(Z)V
    .locals 0
    .param p1, "collapsed"    # Z

    .line 40
    iput-boolean p1, p0, Lorg/catrobat/catroid/content/GroupItemSprite;->collapsed:Z

    .line 41
    return-void
.end method
