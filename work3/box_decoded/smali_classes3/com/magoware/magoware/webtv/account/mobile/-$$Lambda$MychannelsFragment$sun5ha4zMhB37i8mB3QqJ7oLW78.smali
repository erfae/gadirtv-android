.class public final synthetic Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$MychannelsFragment$sun5ha4zMhB37i8mB3QqJ7oLW78;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;

.field public final synthetic f$1:Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserChannelObject;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserChannelObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$MychannelsFragment$sun5ha4zMhB37i8mB3QqJ7oLW78;->f$0:Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$MychannelsFragment$sun5ha4zMhB37i8mB3QqJ7oLW78;->f$1:Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserChannelObject;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$MychannelsFragment$sun5ha4zMhB37i8mB3QqJ7oLW78;->f$0:Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/account/mobile/-$$Lambda$MychannelsFragment$sun5ha4zMhB37i8mB3QqJ7oLW78;->f$1:Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserChannelObject;

    invoke-virtual {v0, v1, p1}, Lcom/magoware/magoware/webtv/account/mobile/MychannelsFragment;->lambda$populateTable$12$MychannelsFragment(Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/UserChannelObject;Landroid/view/View;)V

    return-void
.end method
