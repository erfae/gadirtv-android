.class public final synthetic Lcom/magoware/magoware/webtv/login/-$$Lambda$SignUpFragment$0Kiq02pekhYWLTMNHfmHRTLlUxM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/login/SignUpFragment;

.field public final synthetic f$1:Landroid/widget/Button;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/login/SignUpFragment;Landroid/widget/Button;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/login/-$$Lambda$SignUpFragment$0Kiq02pekhYWLTMNHfmHRTLlUxM;->f$0:Lcom/magoware/magoware/webtv/login/SignUpFragment;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/login/-$$Lambda$SignUpFragment$0Kiq02pekhYWLTMNHfmHRTLlUxM;->f$1:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/-$$Lambda$SignUpFragment$0Kiq02pekhYWLTMNHfmHRTLlUxM;->f$0:Lcom/magoware/magoware/webtv/login/SignUpFragment;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/login/-$$Lambda$SignUpFragment$0Kiq02pekhYWLTMNHfmHRTLlUxM;->f$1:Landroid/widget/Button;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/magoware/magoware/webtv/login/SignUpFragment;->lambda$onCreateView$1$SignUpFragment(Landroid/widget/Button;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
