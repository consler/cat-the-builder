.class public final synthetic Lorg/catrobat/catroid/content/strategy/-$$Lambda$ShowNotePickerFormulaEditorStrategy$T_kePHth7lX88gRBdJ-O14ZABM8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/catrobat/catroid/content/strategy/ShowNotePickerFormulaEditorStrategy;

.field public final synthetic f$1:Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;

.field public final synthetic f$2:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lorg/catrobat/catroid/content/strategy/ShowNotePickerFormulaEditorStrategy;Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/content/strategy/-$$Lambda$ShowNotePickerFormulaEditorStrategy$T_kePHth7lX88gRBdJ-O14ZABM8;->f$0:Lorg/catrobat/catroid/content/strategy/ShowNotePickerFormulaEditorStrategy;

    iput-object p2, p0, Lorg/catrobat/catroid/content/strategy/-$$Lambda$ShowNotePickerFormulaEditorStrategy$T_kePHth7lX88gRBdJ-O14ZABM8;->f$1:Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;

    iput-object p3, p0, Lorg/catrobat/catroid/content/strategy/-$$Lambda$ShowNotePickerFormulaEditorStrategy$T_kePHth7lX88gRBdJ-O14ZABM8;->f$2:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lorg/catrobat/catroid/content/strategy/-$$Lambda$ShowNotePickerFormulaEditorStrategy$T_kePHth7lX88gRBdJ-O14ZABM8;->f$0:Lorg/catrobat/catroid/content/strategy/ShowNotePickerFormulaEditorStrategy;

    iget-object v1, p0, Lorg/catrobat/catroid/content/strategy/-$$Lambda$ShowNotePickerFormulaEditorStrategy$T_kePHth7lX88gRBdJ-O14ZABM8;->f$1:Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;

    iget-object v2, p0, Lorg/catrobat/catroid/content/strategy/-$$Lambda$ShowNotePickerFormulaEditorStrategy$T_kePHth7lX88gRBdJ-O14ZABM8;->f$2:Landroid/view/View;

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/catrobat/catroid/content/strategy/ShowNotePickerFormulaEditorStrategy;->lambda$showSelectEditDialog$0$ShowNotePickerFormulaEditorStrategy(Lorg/catrobat/catroid/content/strategy/ShowFormulaEditorStrategy$Callback;Landroid/view/View;Landroid/content/DialogInterface;I)V

    return-void
.end method
