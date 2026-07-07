.class public Lcom/magoware/magoware/webtv/util/Constants$NotificationType;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/util/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotificationType"
.end annotation


# static fields
.field public static final ADD_IMAGE_AND_TEXT:Ljava/lang/String; = "imageandtext"

.field public static final ADD_IMAGE_ONLY:Ljava/lang/String; = "imageonly"

.field public static final ADD_TEXT_ONLY:Ljava/lang/String; = "textonly"

.field public static final LIVE_TV_SCHEDULE:Ljava/lang/String; = "2"

.field public static final REMOTE_COMMAND:Ljava/lang/String; = "4"

.field public static final SHOW_USERNAME:Ljava/lang/String; = "6"


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/util/Constants;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/util/Constants;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 182
    iput-object p1, p0, Lcom/magoware/magoware/webtv/util/Constants$NotificationType;->this$0:Lcom/magoware/magoware/webtv/util/Constants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
