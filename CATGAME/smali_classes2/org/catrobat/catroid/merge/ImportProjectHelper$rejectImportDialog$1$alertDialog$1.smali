.class final Lorg/catrobat/catroid/merge/ImportProjectHelper$rejectImportDialog$1$alertDialog$1;
.super Ljava/lang/Object;
.source "ImportProjectHelper.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/merge/ImportProjectHelper$rejectImportDialog$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "dialog",
        "Landroid/content/DialogInterface;",
        "<anonymous parameter 1>",
        "",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/catrobat/catroid/merge/ImportProjectHelper$rejectImportDialog$1$alertDialog$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/catrobat/catroid/merge/ImportProjectHelper$rejectImportDialog$1$alertDialog$1;

    invoke-direct {v0}, Lorg/catrobat/catroid/merge/ImportProjectHelper$rejectImportDialog$1$alertDialog$1;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/merge/ImportProjectHelper$rejectImportDialog$1$alertDialog$1;->INSTANCE:Lorg/catrobat/catroid/merge/ImportProjectHelper$rejectImportDialog$1$alertDialog$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "$noName_1"    # I

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 210
    return-void
.end method
