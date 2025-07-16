.class final Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView$initializeListeners$3;
.super Lkotlin/jvm/internal/Lambda;
.source "DefaultTextToolOptionsView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;->initializeListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/catrobat/paintroid/tools/FontType;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "font",
        "Lorg/catrobat/paintroid/tools/FontType;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView$initializeListeners$3;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 93
    check-cast p1, Lorg/catrobat/paintroid/tools/FontType;

    invoke-virtual {p0, p1}, Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView$initializeListeners$3;->invoke(Lorg/catrobat/paintroid/tools/FontType;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/catrobat/paintroid/tools/FontType;)V
    .locals 1

    const-string v0, "font"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView$initializeListeners$3;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;

    invoke-static {v0, p1}, Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;->access$notifyFontChanged(Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;Lorg/catrobat/paintroid/tools/FontType;)V

    .line 95
    iget-object p1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView$initializeListeners$3;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;

    invoke-virtual {p1}, Lorg/catrobat/paintroid/ui/tools/DefaultTextToolOptionsView;->hideKeyboard()V

    return-void
.end method
