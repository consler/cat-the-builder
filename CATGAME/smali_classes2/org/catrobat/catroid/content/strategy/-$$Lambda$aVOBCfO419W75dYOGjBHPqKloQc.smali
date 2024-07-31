.class public final synthetic Lorg/catrobat/catroid/content/strategy/-$$Lambda$aVOBCfO419W75dYOGjBHPqKloQc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/catrobat/catroid/pocketmusic/ui/NotePickerDialog$OnNotePickedListener;


# instance fields
.field public final synthetic f$0:Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;


# direct methods
.method public synthetic constructor <init>(Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/content/strategy/-$$Lambda$aVOBCfO419W75dYOGjBHPqKloQc;->f$0:Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;

    return-void
.end method


# virtual methods
.method public final noteChanged(I)V
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/content/strategy/-$$Lambda$aVOBCfO419W75dYOGjBHPqKloQc;->f$0:Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;

    invoke-interface {v0, p1}, Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;->setValue(I)V

    return-void
.end method
