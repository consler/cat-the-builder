.class public Lorg/catrobat/catroid/merge/NewProjectNameTextWatcher;
.super Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/InputWatcher$TextWatcher;
.source "NewProjectNameTextWatcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/catrobat/catroid/common/Nameable;",
        ">",
        "Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/InputWatcher$TextWatcher;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    .local p0, "this":Lorg/catrobat/catroid/merge/NewProjectNameTextWatcher;, "Lorg/catrobat/catroid/merge/NewProjectNameTextWatcher<TT;>;"
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/InputWatcher$TextWatcher;-><init>()V

    return-void
.end method


# virtual methods
.method protected isNameUnique(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 33
    .local p0, "this":Lorg/catrobat/catroid/merge/NewProjectNameTextWatcher;, "Lorg/catrobat/catroid/merge/NewProjectNameTextWatcher<TT;>;"
    invoke-static {p1}, Lorg/catrobat/catroid/ui/recyclerview/dialog/ReplaceExistingProjectDialogFragment;->projectExistsInDirectory(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
