.class public Lorg/catrobat/catroid/pocketmusic/ui/NotePickerDialog;
.super Landroidx/appcompat/app/AppCompatDialogFragment;
.source "NotePickerDialog.java"

# interfaces
.implements Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView$OnNoteChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/pocketmusic/ui/NotePickerDialog$OnNotePickedListener;
    }
.end annotation


# static fields
.field private static final CURRENT_NOTE:Ljava/lang/String; = "CurrentNote"

.field private static final INITIAL_NOTE:Ljava/lang/String; = "InitialNote"

.field private static final SHOW_ACTION_BAR:Ljava/lang/String; = "ShowActionBar"


# instance fields
.field private buttonApply:Landroid/widget/Button;

.field private buttonCancel:Landroid/widget/Button;

.field private midiDriver:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;

.field private notePickerView:Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;

.field private noteToApply:I

.field public onNotePickedListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/catrobat/catroid/pocketmusic/ui/NotePickerDialog$OnNotePickedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatDialogFragment;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerDialog;->onNotePickedListener:Ljava/util/List;

    return-void
.end method

.method public static newInstance(I)Lorg/catrobat/catroid/pocketmusic/ui/NotePickerDialog;
    .locals 1
    .param p0, "initialNote"    # I

    .line 59
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerDialog;->newInstance(IZ)Lorg/catrobat/catroid/pocketmusic/ui/NotePickerDialog;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(IZ)Lorg/catrobat/catroid/pocketmusic/ui/NotePickerDialog;
    .locals 3
    .param p0, "initialNote"    # I
    .param p1, "showActionBar"    # Z

    .line 63
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerDialog;

    invoke-direct {v0}, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerDialog;-><init>()V

    .line 64
    .local v0, "dialog":Lorg/catrobat/catroid/pocketmusic/ui/NotePickerDialog;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 65
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "InitialNote"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 66
    const-string v2, "CurrentNote"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 67
    const-string v2, "ShowActionBar"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 68
    invoke-virtual {v0, v1}, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerDialog;->setArguments(Landroid/os/Bundle;)V

    .line 69
    return-object v0
.end method

.method private updateNoteChange(I)V
    .locals 2
    .param p1, "note"    # I

    .line 156
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerDialog;->onNotePickedListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerDialog$OnNotePickedListener;

    .line 157
    .local v1, "listener":Lorg/catrobat/catroid/pocketmusic/ui/NotePickerDialog$OnNotePickedListener;
    invoke-interface {v1, p1}, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerDialog$OnNotePickedListener;->noteChanged(I)V

    .line 158
    .end local v1    # "listener":Lorg/catrobat/catroid/pocketmusic/ui/NotePickerDialog$OnNotePickedListener;
    goto :goto_0

    .line 159
    :cond_0
    return-void
.end method


# virtual methods
.method public addOnNotePickedListener(Lorg/catrobat/catroid/pocketmusic/ui/NotePickerDialog$OnNotePickedListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/catrobat/catroid/pocketmusic/ui/NotePickerDialog$OnNotePickedListener;

    .line 143
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerDialog;->onNotePickedListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 135
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerDialog;->getShowsDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialogFragment;->dismiss()V

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    .line 140
    :goto_0
    return-void
.end method

.method public synthetic lambda$onViewCreated$0$NotePickerDialog(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 103
    iget v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerDialog;->noteToApply:I

    invoke-direct {p0, v0}, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerDialog;->updateNoteChange(I)V

    .line 104
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerDialog;->dismiss()V

    .line 105
    return-void
.end method

.method public synthetic lambda$onViewCreated$1$NotePickerDialog(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 107
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerDialog;->dismiss()V

    return-void
.end method

.method public noteChanged(I)V
    .locals 0
    .param p1, "note"    # I

    .line 152
    iput p1, p0, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerDialog;->noteToApply:I

    .line 153
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 74
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;

    invoke-direct {v0}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerDialog;->midiDriver:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;

    .line 77
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 128
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 129
    .local v0, "dialog":Landroid/app/Dialog;
    const v1, 0x7f1205c2

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 130
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 82
    const v0, 0x7f0d0138

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 87
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 89
    new-instance v0, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;

    invoke-direct {v0}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;-><init>()V

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerDialog;->midiDriver:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;

    .line 90
    invoke-static {}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;->isInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerDialog;->midiDriver:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;

    invoke-virtual {v0}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;->start()V

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerDialog;->midiDriver:Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;

    sget-object v2, Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;->ACOUSTIC_GRAND_PIANO:Lorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;

    invoke-virtual {v0, v1, v2}, Lorg/catrobat/catroid/pocketmusic/mididriver/MidiNotePlayer;->setInstrument(BLorg/catrobat/catroid/pocketmusic/note/MusicalInstrument;)V

    .line 96
    :goto_0
    const v0, 0x7f0a0490

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerDialog;->notePickerView:Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;

    .line 97
    invoke-virtual {v0, p0}, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;->setOnNoteChangedListener(Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView$OnNoteChangedListener;)V

    .line 99
    const v0, 0x7f0a048f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerDialog;->buttonApply:Landroid/widget/Button;

    .line 100
    const v0, 0x7f0a048e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerDialog;->buttonCancel:Landroid/widget/Button;

    .line 102
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerDialog;->buttonApply:Landroid/widget/Button;

    new-instance v2, Lorg/catrobat/catroid/pocketmusic/ui/-$$Lambda$NotePickerDialog$PYoqWUKYJm94HTDdKDsrETh9Zmo;

    invoke-direct {v2, p0}, Lorg/catrobat/catroid/pocketmusic/ui/-$$Lambda$NotePickerDialog$PYoqWUKYJm94HTDdKDsrETh9Zmo;-><init>(Lorg/catrobat/catroid/pocketmusic/ui/NotePickerDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerDialog;->buttonCancel:Landroid/widget/Button;

    new-instance v2, Lorg/catrobat/catroid/pocketmusic/ui/-$$Lambda$NotePickerDialog$DnbcTUqZOpZkFUvUE8vSXJ1NXmY;

    invoke-direct {v2, p0}, Lorg/catrobat/catroid/pocketmusic/ui/-$$Lambda$NotePickerDialog$DnbcTUqZOpZkFUvUE8vSXJ1NXmY;-><init>(Lorg/catrobat/catroid/pocketmusic/ui/NotePickerDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const-string v0, "InitialNote"

    const-string v2, "CurrentNote"

    if-eqz p2, :cond_1

    .line 110
    iget-object v3, p0, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerDialog;->notePickerView:Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;

    .line 111
    invoke-static {v1}, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->getMidiValueForRow(I)I

    move-result v4

    .line 110
    invoke-virtual {p2, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v3, v2}, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;->setSelectedNote(I)V

    .line 112
    iget-object v2, p0, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerDialog;->notePickerView:Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;

    .line 113
    invoke-static {v1}, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->getMidiValueForRow(I)I

    move-result v1

    .line 112
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;->setInitialNote(I)V

    goto :goto_1

    .line 115
    :cond_1
    invoke-virtual {p0}, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    .line 116
    .local v3, "arguments":Landroid/os/Bundle;
    iget-object v4, p0, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerDialog;->notePickerView:Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;

    .line 117
    invoke-static {v1}, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->getMidiValueForRow(I)I

    move-result v5

    .line 116
    invoke-virtual {v3, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v4, v2}, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;->setSelectedNote(I)V

    .line 118
    iget-object v2, p0, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerDialog;->notePickerView:Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;

    .line 119
    invoke-static {v1}, Lorg/catrobat/catroid/pocketmusic/ui/TrackRowView;->getMidiValueForRow(I)I

    move-result v1

    .line 118
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2, v0}, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;->setInitialNote(I)V

    .line 122
    .end local v3    # "arguments":Landroid/os/Bundle;
    :goto_1
    iget-object v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerDialog;->notePickerView:Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;

    invoke-virtual {v0}, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerView;->getInitialNote()I

    move-result v0

    iput v0, p0, Lorg/catrobat/catroid/pocketmusic/ui/NotePickerDialog;->noteToApply:I

    .line 123
    return-void
.end method
