# From /usr/share/doc/etckeeper*/bashrc.example
case "${EBUILD_PHASE}" in
        setup|prerm) etckeeper pre-install ;;
        postinst|postrm) etckeeper post-install ;;
esac

# This hook is neccesary for automatic updating of the cfg-update index, please do not modify it!
pre_pkg_setup() {
	[[ $ROOT = / ]] && : cfg-update --index
}
