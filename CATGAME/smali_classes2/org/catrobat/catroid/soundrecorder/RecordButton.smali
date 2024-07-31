.class public Lorg/catrobat/catroid/soundrecorder/RecordButton;
.super Landroid/widget/ImageButton;
.source "RecordButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/soundrecorder/RecordButton$RecordState;
    }
.end annotation


# instance fields
.field private state:Lorg/catrobat/catroid/soundrecorder/RecordButton$RecordState;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 32
    sget-object v0, Lorg/catrobat/catroid/soundrecorder/RecordButton$RecordState;->STOP:Lorg/catrobat/catroid/soundrecorder/RecordButton$RecordState;

    iput-object v0, p0, Lorg/catrobat/catroid/soundrecorder/RecordButton;->state:Lorg/catrobat/catroid/soundrecorder/RecordButton$RecordState;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    sget-object v0, Lorg/catrobat/catroid/soundrecorder/RecordButton$RecordState;->STOP:Lorg/catrobat/catroid/soundrecorder/RecordButton$RecordState;

    iput-object v0, p0, Lorg/catrobat/catroid/soundrecorder/RecordButton;->state:Lorg/catrobat/catroid/soundrecorder/RecordButton$RecordState;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    sget-object v0, Lorg/catrobat/catroid/soundrecorder/RecordButton$RecordState;->STOP:Lorg/catrobat/catroid/soundrecorder/RecordButton$RecordState;

    iput-object v0, p0, Lorg/catrobat/catroid/soundrecorder/RecordButton;->state:Lorg/catrobat/catroid/soundrecorder/RecordButton$RecordState;

    .line 44
    return-void
.end method


# virtual methods
.method public getState()Lorg/catrobat/catroid/soundrecorder/RecordButton$RecordState;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/catrobat/catroid/soundrecorder/RecordButton;->state:Lorg/catrobat/catroid/soundrecorder/RecordButton$RecordState;

    return-object v0
.end method

.method public setState(Lorg/catrobat/catroid/soundrecorder/RecordButton$RecordState;)V
    .locals 0
    .param p1, "state"    # Lorg/catrobat/catroid/soundrecorder/RecordButton$RecordState;

    .line 51
    iput-object p1, p0, Lorg/catrobat/catroid/soundrecorder/RecordButton;->state:Lorg/catrobat/catroid/soundrecorder/RecordButton$RecordState;

    .line 52
    return-void
.end method
