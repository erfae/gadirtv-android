.class public Landroidx/leanback/supportleanbackshowcase/app/media/VideoSurfaceFragment;
.super Landroid/app/Fragment;
.source "VideoSurfaceFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VideoSurfaceFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 32
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 43
    sget p2, Landroidx/leanback/supportleanbackshowcase/R$layout;->video_surface_fragment:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onStop()V
    .locals 0

    .line 38
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    return-void
.end method
