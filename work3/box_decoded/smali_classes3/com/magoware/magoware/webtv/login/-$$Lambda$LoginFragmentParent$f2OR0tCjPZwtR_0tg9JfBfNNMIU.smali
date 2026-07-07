.class public final synthetic Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$f2OR0tCjPZwtR_0tg9JfBfNNMIU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$f2OR0tCjPZwtR_0tg9JfBfNNMIU;->f$0:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/magoware/magoware/webtv/login/-$$Lambda$LoginFragmentParent$f2OR0tCjPZwtR_0tg9JfBfNNMIU;->f$0:Landroid/widget/ImageView;

    check-cast p1, Lcom/google/firebase/iid/InstanceIdResult;

    invoke-static {v0, p1}, Lcom/magoware/magoware/webtv/login/LoginFragmentParent;->lambda$showQrCode$16(Landroid/widget/ImageView;Lcom/google/firebase/iid/InstanceIdResult;)V

    return-void
.end method
