.class public final Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog;
.super Landroidx/appcompat/app/AlertDialog;
.source "TextInputDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$OnClickListener;,
        Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$TextWatcher;,
        Lorg/catrobat/catroid/ui/recyclerview/dialog/TextInputDialog$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 48
    return-void
.end method
