.class public final Lorg/catrobat/catroid/databinding/ActivitySoundrecorderBinding;
.super Ljava/lang/Object;
.source "ActivitySoundrecorderBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/LinearLayout;

.field public final soundrecorderChronometerBar:Landroid/view/View;

.field public final soundrecorderChronometerTimeRecorded:Landroid/widget/Chronometer;

.field public final soundrecorderRecordButton:Lorg/catrobat/catroid/soundrecorder/RecordButton;

.field public final soundrecorderRecordTextView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/Chronometer;Lorg/catrobat/catroid/soundrecorder/RecordButton;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "soundrecorderChronometerBar"    # Landroid/view/View;
    .param p3, "soundrecorderChronometerTimeRecorded"    # Landroid/widget/Chronometer;
    .param p4, "soundrecorderRecordButton"    # Lorg/catrobat/catroid/soundrecorder/RecordButton;
    .param p5, "soundrecorderRecordTextView"    # Landroid/widget/TextView;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/catrobat/catroid/databinding/ActivitySoundrecorderBinding;->rootView:Landroid/widget/LinearLayout;

    .line 41
    iput-object p2, p0, Lorg/catrobat/catroid/databinding/ActivitySoundrecorderBinding;->soundrecorderChronometerBar:Landroid/view/View;

    .line 42
    iput-object p3, p0, Lorg/catrobat/catroid/databinding/ActivitySoundrecorderBinding;->soundrecorderChronometerTimeRecorded:Landroid/widget/Chronometer;

    .line 43
    iput-object p4, p0, Lorg/catrobat/catroid/databinding/ActivitySoundrecorderBinding;->soundrecorderRecordButton:Lorg/catrobat/catroid/soundrecorder/RecordButton;

    .line 44
    iput-object p5, p0, Lorg/catrobat/catroid/databinding/ActivitySoundrecorderBinding;->soundrecorderRecordTextView:Landroid/widget/TextView;

    .line 45
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/ActivitySoundrecorderBinding;
    .locals 12
    .param p0, "rootView"    # Landroid/view/View;

    .line 74
    const v0, 0x7f0a05c7

    .line 75
    .local v0, "id":I
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 76
    .local v7, "soundrecorderChronometerBar":Landroid/view/View;
    if-eqz v7, :cond_3

    .line 80
    const v0, 0x7f0a05c8

    .line 81
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/Chronometer;

    .line 82
    .local v8, "soundrecorderChronometerTimeRecorded":Landroid/widget/Chronometer;
    if-eqz v8, :cond_2

    .line 86
    const v0, 0x7f0a05c9

    .line 87
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lorg/catrobat/catroid/soundrecorder/RecordButton;

    .line 88
    .local v9, "soundrecorderRecordButton":Lorg/catrobat/catroid/soundrecorder/RecordButton;
    if-eqz v9, :cond_1

    .line 92
    const v0, 0x7f0a05ca

    .line 93
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    .line 94
    .local v10, "soundrecorderRecordTextView":Landroid/widget/TextView;
    if-eqz v10, :cond_0

    .line 98
    new-instance v11, Lorg/catrobat/catroid/databinding/ActivitySoundrecorderBinding;

    move-object v2, p0

    check-cast v2, Landroid/widget/LinearLayout;

    move-object v1, v11

    move-object v3, v7

    move-object v4, v8

    move-object v5, v9

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Lorg/catrobat/catroid/databinding/ActivitySoundrecorderBinding;-><init>(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/Chronometer;Lorg/catrobat/catroid/soundrecorder/RecordButton;Landroid/widget/TextView;)V

    return-object v11

    .line 95
    :cond_0
    goto :goto_0

    .line 89
    .end local v10    # "soundrecorderRecordTextView":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 83
    .end local v9    # "soundrecorderRecordButton":Lorg/catrobat/catroid/soundrecorder/RecordButton;
    :cond_2
    goto :goto_0

    .line 77
    .end local v8    # "soundrecorderChronometerTimeRecorded":Landroid/widget/Chronometer;
    :cond_3
    nop

    .line 102
    .end local v7    # "soundrecorderChronometerBar":Landroid/view/View;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/ActivitySoundrecorderBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 55
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/ActivitySoundrecorderBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/ActivitySoundrecorderBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/ActivitySoundrecorderBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 61
    const v0, 0x7f0d002c

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 62
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 63
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 65
    :cond_0
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/ActivitySoundrecorderBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/ActivitySoundrecorderBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lorg/catrobat/catroid/databinding/ActivitySoundrecorderBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/ActivitySoundrecorderBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
