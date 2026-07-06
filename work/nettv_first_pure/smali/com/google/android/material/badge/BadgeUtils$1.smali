.class Lcom/google/android/material/badge/BadgeUtils$1;
.super Ljava/lang/Object;
.source "BadgeUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/badge/BadgeUtils;->attachBadgeDrawable(Lcom/google/android/material/badge/BadgeDrawable;Landroidx/appcompat/widget/Toolbar;ILandroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

.field public final synthetic val$customBadgeParent:Landroid/widget/FrameLayout;

.field public final synthetic val$menuItemId:I

.field public final synthetic val$toolbar:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/Toolbar;ILcom/google/android/material/badge/BadgeDrawable;Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/badge/BadgeUtils$1;->val$toolbar:Landroidx/appcompat/widget/Toolbar;

    iput p2, p0, Lcom/google/android/material/badge/BadgeUtils$1;->val$menuItemId:I

    iput-object p3, p0, Lcom/google/android/material/badge/BadgeUtils$1;->val$badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    iput-object p4, p0, Lcom/google/android/material/badge/BadgeUtils$1;->val$customBadgeParent:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeUtils$1;->val$toolbar:Landroidx/appcompat/widget/Toolbar;

    iget v1, p0, Lcom/google/android/material/badge/BadgeUtils$1;->val$menuItemId:I

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/material/internal/ToolbarUtils;->getActionMenuItemView(Landroidx/appcompat/widget/Toolbar;I)Landroidx/appcompat/view/menu/ActionMenuItemView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeUtils$1;->val$badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    iget-object v2, p0, Lcom/google/android/material/badge/BadgeUtils$1;->val$toolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 4
    sget v3, Lcom/google/android/material/R$dimen;->mtrl_badge_toolbar_action_menu_item_horizontal_offset:I

    .line 5
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 6
    invoke-virtual {v1, v3}, Lcom/google/android/material/badge/BadgeDrawable;->setAdditionalHorizontalOffset(I)V

    .line 7
    sget v3, Lcom/google/android/material/R$dimen;->mtrl_badge_toolbar_action_menu_item_vertical_offset:I

    .line 8
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 9
    invoke-virtual {v1, v2}, Lcom/google/android/material/badge/BadgeDrawable;->setAdditionalVerticalOffset(I)V

    .line 10
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeUtils$1;->val$badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    iget-object v2, p0, Lcom/google/android/material/badge/BadgeUtils$1;->val$customBadgeParent:Landroid/widget/FrameLayout;

    invoke-static {v1, v0, v2}, Lcom/google/android/material/badge/BadgeUtils;->attachBadgeDrawable(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 11
    iget-object v1, p0, Lcom/google/android/material/badge/BadgeUtils$1;->val$badgeDrawable:Lcom/google/android/material/badge/BadgeDrawable;

    invoke-static {v1, v0}, Lcom/google/android/material/badge/BadgeUtils;->access$000(Lcom/google/android/material/badge/BadgeDrawable;Landroid/view/View;)V

    :cond_0
    return-void
.end method
