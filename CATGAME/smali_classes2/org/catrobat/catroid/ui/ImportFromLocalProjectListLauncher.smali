.class public final Lorg/catrobat/catroid/ui/ImportFromLocalProjectListLauncher;
.super Ljava/lang/Object;
.source "ImportLaunchers.kt"

# interfaces
.implements Lorg/catrobat/catroid/ui/ImportLauncher;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lorg/catrobat/catroid/ui/ImportFromLocalProjectListLauncher;",
        "Lorg/catrobat/catroid/ui/ImportLauncher;",
        "activity",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "title",
        "",
        "(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)V",
        "startActivityForResult",
        "",
        "requestCode",
        "",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final activity:Landroidx/appcompat/app/AppCompatActivity;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Landroidx/appcompat/app/AppCompatActivity;
    .param p2, "title"    # Ljava/lang/String;

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/ui/ImportFromLocalProjectListLauncher;->activity:Landroidx/appcompat/app/AppCompatActivity;

    iput-object p2, p0, Lorg/catrobat/catroid/ui/ImportFromLocalProjectListLauncher;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public startActivityForResult(I)V
    .locals 3
    .param p1, "requestCode"    # I

    .line 175
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/catrobat/catroid/ui/ImportFromLocalProjectListLauncher;->activity:Landroidx/appcompat/app/AppCompatActivity;

    check-cast v1, Landroid/content/Context;

    const-class v2, Lorg/catrobat/catroid/ui/ProjectListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lorg/catrobat/catroid/ui/ImportFromLocalProjectListLauncher;->title:Ljava/lang/String;

    const-string v2, "merge"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    iget-object v1, p0, Lorg/catrobat/catroid/ui/ImportFromLocalProjectListLauncher;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v1, v0, p1}, Landroidx/appcompat/app/AppCompatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 178
    return-void
.end method
