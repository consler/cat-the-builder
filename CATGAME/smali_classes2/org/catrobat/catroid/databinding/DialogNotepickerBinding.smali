.class public final Lorg/catrobat/catroid/databinding/DialogNotepickerBinding;
.super Ljava/lang/Object;
.source "DialogNotepickerBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final musicdroidPianoNotepicker:Lorg/catrobat/catroid/pocketmusic/ui/PianoView;

.field public final notePickerButtonCancel:Landroid/widget/Button;

.field public final notePickerButtonOk:Landroid/widget/Button;

.field public final notePickerView:Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;

.field private final rootView:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Lorg/catrobat/catroid/pocketmusic/ui/PianoView;Landroid/widget/Button;Landroid/widget/Button;Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/RelativeLayout;
    .param p2, "musicdroidPianoNotepicker"    # Lorg/catrobat/catroid/pocketmusic/ui/PianoView;
    .param p3, "notePickerButtonCancel"    # Landroid/widget/Button;
    .param p4, "notePickerButtonOk"    # Landroid/widget/Button;
    .param p5, "notePickerView"    # Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/catrobat/catroid/databinding/DialogNotepickerBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 39
    iput-object p2, p0, Lorg/catrobat/catroid/databinding/DialogNotepickerBinding;->musicdroidPianoNotepicker:Lorg/catrobat/catroid/pocketmusic/ui/PianoView;

    .line 40
    iput-object p3, p0, Lorg/catrobat/catroid/databinding/DialogNotepickerBinding;->notePickerButtonCancel:Landroid/widget/Button;

    .line 41
    iput-object p4, p0, Lorg/catrobat/catroid/databinding/DialogNotepickerBinding;->notePickerButtonOk:Landroid/widget/Button;

    .line 42
    iput-object p5, p0, Lorg/catrobat/catroid/databinding/DialogNotepickerBinding;->notePickerView:Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;

    .line 43
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/DialogNotepickerBinding;
    .locals 12
    .param p0, "rootView"    # Landroid/view/View;

    .line 72
    const v0, 0x7f0a047b

    .line 73
    .local v0, "id":I
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/pocketmusic/ui/PianoView;

    .line 74
    .local v1, "musicdroidPianoNotepicker":Lorg/catrobat/catroid/pocketmusic/ui/PianoView;
    if-eqz v1, :cond_3

    .line 78
    const v0, 0x7f0a048e

    .line 79
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/Button;

    .line 80
    .local v8, "notePickerButtonCancel":Landroid/widget/Button;
    if-eqz v8, :cond_2

    .line 84
    const v0, 0x7f0a048f

    .line 85
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/Button;

    .line 86
    .local v9, "notePickerButtonOk":Landroid/widget/Button;
    if-eqz v9, :cond_1

    .line 90
    const v0, 0x7f0a0490

    .line 91
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;

    .line 92
    .local v10, "notePickerView":Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;
    if-eqz v10, :cond_0

    .line 96
    new-instance v11, Lorg/catrobat/catroid/databinding/DialogNotepickerBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v11

    move-object v4, v1

    move-object v5, v8

    move-object v6, v9

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Lorg/catrobat/catroid/databinding/DialogNotepickerBinding;-><init>(Landroid/widget/RelativeLayout;Lorg/catrobat/catroid/pocketmusic/ui/PianoView;Landroid/widget/Button;Landroid/widget/Button;Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;)V

    return-object v11

    .line 93
    :cond_0
    goto :goto_0

    .line 87
    .end local v10    # "notePickerView":Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;
    :cond_1
    goto :goto_0

    .line 81
    .end local v9    # "notePickerButtonOk":Landroid/widget/Button;
    :cond_2
    goto :goto_0

    .line 75
    .end local v8    # "notePickerButtonCancel":Landroid/widget/Button;
    :cond_3
    nop

    .line 99
    .end local v1    # "musicdroidPianoNotepicker":Lorg/catrobat/catroid/pocketmusic/ui/PianoView;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/catrobat/catroid/databinding/DialogNotepickerBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 53
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/catrobat/catroid/databinding/DialogNotepickerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/DialogNotepickerBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/catrobat/catroid/databinding/DialogNotepickerBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 59
    const v0, 0x7f0d0138

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 61
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 63
    :cond_0
    invoke-static {v0}, Lorg/catrobat/catroid/databinding/DialogNotepickerBinding;->bind(Landroid/view/View;)Lorg/catrobat/catroid/databinding/DialogNotepickerBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lorg/catrobat/catroid/databinding/DialogNotepickerBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/catrobat/catroid/databinding/DialogNotepickerBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
