.class final Lorg/catrobat/paintroid/WelcomeActivity$setUpNavigationView$1;
.super Ljava/lang/Object;
.source "WelcomeActivity.kt"

# interfaces
.implements Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/WelcomeActivity;->setUpNavigationView(Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "menuItem",
        "Landroid/view/MenuItem;",
        "onNavigationItemSelected"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic $description:Landroidx/appcompat/widget/AppCompatTextView;

.field final synthetic $head:Landroidx/appcompat/widget/AppCompatTextView;

.field final synthetic this$0:Lorg/catrobat/paintroid/WelcomeActivity;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/WelcomeActivity;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/paintroid/WelcomeActivity$setUpNavigationView$1;->this$0:Lorg/catrobat/paintroid/WelcomeActivity;

    iput-object p2, p0, Lorg/catrobat/paintroid/WelcomeActivity$setUpNavigationView$1;->$head:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p3, p0, Lorg/catrobat/paintroid/WelcomeActivity$setUpNavigationView$1;->$description:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    const-string v0, "menuItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lorg/catrobat/paintroid/WelcomeActivity$setUpNavigationView$1;->$head:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 134
    sget v1, Lorg/catrobat/paintroid/R$id;->action_tools:I

    if-ne v0, v1, :cond_0

    .line 135
    nop

    .line 136
    iget-object v0, p0, Lorg/catrobat/paintroid/WelcomeActivity$setUpNavigationView$1;->$description:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lorg/catrobat/paintroid/WelcomeActivity$setUpNavigationView$1;->this$0:Lorg/catrobat/paintroid/WelcomeActivity;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/catrobat/paintroid/R$string;->intro_bottom_navigation_tools_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 137
    :cond_0
    sget v1, Lorg/catrobat/paintroid/R$id;->action_current_tool:I

    if-ne v0, v1, :cond_1

    .line 138
    nop

    .line 139
    iget-object v0, p0, Lorg/catrobat/paintroid/WelcomeActivity$setUpNavigationView$1;->$description:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lorg/catrobat/paintroid/WelcomeActivity$setUpNavigationView$1;->this$0:Lorg/catrobat/paintroid/WelcomeActivity;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/catrobat/paintroid/R$string;->intro_bottom_navigation_current_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 140
    :cond_1
    sget v1, Lorg/catrobat/paintroid/R$id;->action_color_picker:I

    if-ne v0, v1, :cond_2

    .line 141
    nop

    .line 142
    iget-object v0, p0, Lorg/catrobat/paintroid/WelcomeActivity$setUpNavigationView$1;->$description:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lorg/catrobat/paintroid/WelcomeActivity$setUpNavigationView$1;->this$0:Lorg/catrobat/paintroid/WelcomeActivity;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/catrobat/paintroid/R$string;->intro_bottom_navigation_color_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 144
    :cond_2
    nop

    .line 145
    iget-object v0, p0, Lorg/catrobat/paintroid/WelcomeActivity$setUpNavigationView$1;->$description:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lorg/catrobat/paintroid/WelcomeActivity$setUpNavigationView$1;->this$0:Lorg/catrobat/paintroid/WelcomeActivity;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/catrobat/paintroid/R$string;->intro_bottom_navigation_layers_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    :goto_0
    nop

    .line 147
    const/4 v0, 0x0

    return v0
.end method
